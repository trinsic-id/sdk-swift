// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: services/options/field-options.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

// MARK: - Extension support defined in field-options.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

public extension SwiftProtobuf.Google_Protobuf_FieldOptions {
    /// Whether field is optional in Trinsic's backend.
    /// This is not the same as an `optional` protobuf label;
    /// it only impacts documentation generation for the field.
    var Services_Options_optional: Bool {
        get { return getExtensionValue(ext: Services_Options_Extensions_optional) ?? false }
        set { setExtensionValue(ext: Services_Options_Extensions_optional, value: newValue) }
    }

    /// Returns true if extension `Services_Options_Extensions_optional`
    /// has been explicitly set.
    var hasServices_Options_optional: Bool {
        return hasExtensionValue(ext: Services_Options_Extensions_optional)
    }

    /// Clears the value of extension `Services_Options_Extensions_optional`.
    /// Subsequent reads from it will return its default value.
    mutating func clearServices_Options_optional() {
        clearExtensionValue(ext: Services_Options_Extensions_optional)
    }
}

// MARK: - File's ExtensionMap: Services_Options_Field_u45Options_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Services_Options_Field_u45Options_Extensions: SwiftProtobuf.SimpleExtensionMap = [
    Services_Options_Extensions_optional,
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// Whether field is optional in Trinsic's backend.
/// This is not the same as an `optional` protobuf label;
/// it only impacts documentation generation for the field.
public let Services_Options_Extensions_optional = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_FieldOptions>(
    _protobuf_fieldNumber: 60000,
    fieldName: "services.options.optional"
)
