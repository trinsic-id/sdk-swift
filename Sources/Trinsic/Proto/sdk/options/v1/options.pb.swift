// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sdk/options/v1/options.proto
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
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// service options
public struct Sdk_Options_V1_ServiceOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// server configuration
  public var server: Sdk_Options_V1_ServerConfiguration {
    get {return _server ?? Sdk_Options_V1_ServerConfiguration()}
    set {_server = newValue}
  }
  /// Returns true if `server` has been explicitly set.
  public var hasServer: Bool {return self._server != nil}
  /// Clears the value of `server`. Subsequent reads from it will return its default value.
  public mutating func clearServer() {self._server = nil}

  /// account profile to use for authentication
  public var profile: Services_Account_V1_AccountProfile {
    get {return _profile ?? Services_Account_V1_AccountProfile()}
    set {_profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  public var hasProfile: Bool {return self._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  public mutating func clearProfile() {self._profile = nil}

  /// ecosystem to use with endpoints that require it
  public var ecosystem: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _server: Sdk_Options_V1_ServerConfiguration? = nil
  fileprivate var _profile: Services_Account_V1_AccountProfile? = nil
}

public struct Sdk_Options_V1_ServerConfiguration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// service endpoint
  public var endpoint: String = String()

  /// service port
  public var port: Int32 = 0

  /// indicates if tls is used
  public var useTls: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "sdk.options.v1"

extension Sdk_Options_V1_ServiceOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServiceOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "server"),
    2: .same(proto: "profile"),
    3: .same(proto: "ecosystem"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._server) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._profile) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.ecosystem) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._server {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._profile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.ecosystem.isEmpty {
      try visitor.visitSingularStringField(value: self.ecosystem, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sdk_Options_V1_ServiceOptions, rhs: Sdk_Options_V1_ServiceOptions) -> Bool {
    if lhs._server != rhs._server {return false}
    if lhs._profile != rhs._profile {return false}
    if lhs.ecosystem != rhs.ecosystem {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sdk_Options_V1_ServerConfiguration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServerConfiguration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .same(proto: "port"),
    3: .standard(proto: "use_tls"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.endpoint) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.port) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.useTls) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.endpoint, fieldNumber: 1)
    }
    if self.port != 0 {
      try visitor.visitSingularInt32Field(value: self.port, fieldNumber: 2)
    }
    if self.useTls != false {
      try visitor.visitSingularBoolField(value: self.useTls, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sdk_Options_V1_ServerConfiguration, rhs: Sdk_Options_V1_ServerConfiguration) -> Bool {
    if lhs.endpoint != rhs.endpoint {return false}
    if lhs.port != rhs.port {return false}
    if lhs.useTls != rhs.useTls {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
