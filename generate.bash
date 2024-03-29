#!/bin/bash

# ensure clean tree
if [[ -z $(git status -s) ]]
then
  :
else
  echo "git tree is dirty, please commit or stash changes before running this script"
  exit
fi

# install protoc and required plugins
brew install protobuf swift-protobuf grpc-swift swiftformat

# define protoc plugin paths and generate the files
PROTOC=$(which protoc)
PROTOC_GEN_SWIFT=$(which protoc-gen-swift)
PROTOC_GEN_GRPC_SWIFT=$(which protoc-gen-grpc-swift)

PROTO_ROOT=./proto
OUT_DIR=./Sources/Trinsic/Proto

for f in $(find $PROTO_ROOT -name "*.proto");
do
  echo "Compiling: $f"
    ${PROTOC} \
    --proto_path=${PROTO_ROOT} \
    --plugin=${PROTOC_GEN_SWIFT} \
    --swift_opt=Visibility=Public \
    --swift_out=${OUT_DIR} \
    --plugin=${PROTOC_GEN_GRPC_SWIFT} \
    --grpc-swift_opt=Visibility=Public \
    --grpc-swift_opt=KeepMethodCasing=true \
    --grpc-swift_out=${OUT_DIR} "$f"
done

swiftformat . --swiftversion 5.6
echo "Done!"
