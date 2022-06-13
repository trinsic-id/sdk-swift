// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: services/common/v1/common.proto
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

public enum Services_Common_V1_ResponseStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case success // = 0
    case walletAccessDenied // = 10
    case walletExists // = 11
    case itemNotFound // = 20
    case serializationError // = 200
    case unknownError // = 100
    case UNRECOGNIZED(Int)

    public init() {
        self = .success
    }

    public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .success
        case 10: self = .walletAccessDenied
        case 11: self = .walletExists
        case 20: self = .itemNotFound
        case 100: self = .unknownError
        case 200: self = .serializationError
        default: self = .UNRECOGNIZED(rawValue)
        }
    }

    public var rawValue: Int {
        switch self {
        case .success: return 0
        case .walletAccessDenied: return 10
        case .walletExists: return 11
        case .itemNotFound: return 20
        case .unknownError: return 100
        case .serializationError: return 200
        case let .UNRECOGNIZED(i): return i
        }
    }
}

#if swift(>=4.2)

    extension Services_Common_V1_ResponseStatus: CaseIterable {
        // The compiler won't synthesize support with the UNRECOGNIZED case.
        public static var allCases: [Services_Common_V1_ResponseStatus] = [
            .success,
            .walletAccessDenied,
            .walletExists,
            .itemNotFound,
            .serializationError,
            .unknownError,
        ]
    }

#endif // swift(>=4.2)

public struct Services_Common_V1_ServerConfig {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// service endpoint
    public var endpoint: String = .init()

    /// service port
    public var port: Int32 = 0

    /// indicates if tls is used
    public var useTls: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Nonce used to generate an oberon proof
public struct Services_Common_V1_Nonce {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// UTC unix millisecond timestamp the request was made
    public var timestamp: Int64 = 0

    /// blake3256 hash of the request body
    public var requestHash: Data = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
    extension Services_Common_V1_ResponseStatus: @unchecked Sendable {}
    extension Services_Common_V1_ServerConfig: @unchecked Sendable {}
    extension Services_Common_V1_Nonce: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "services.common.v1"

extension Services_Common_V1_ResponseStatus: SwiftProtobuf._ProtoNameProviding {
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        0: .same(proto: "SUCCESS"),
        10: .same(proto: "WALLET_ACCESS_DENIED"),
        11: .same(proto: "WALLET_EXISTS"),
        20: .same(proto: "ITEM_NOT_FOUND"),
        100: .same(proto: "UNKNOWN_ERROR"),
        200: .same(proto: "SERIALIZATION_ERROR"),
    ]
}

extension Services_Common_V1_ServerConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".ServerConfig"
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
            case 1: try try decoder.decodeSingularStringField(value: &endpoint)
            case 2: try try decoder.decodeSingularInt32Field(value: &port)
            case 3: try try decoder.decodeSingularBoolField(value: &useTls)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !endpoint.isEmpty {
            try visitor.visitSingularStringField(value: endpoint, fieldNumber: 1)
        }
        if port != 0 {
            try visitor.visitSingularInt32Field(value: port, fieldNumber: 2)
        }
        if useTls != false {
            try visitor.visitSingularBoolField(value: useTls, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Common_V1_ServerConfig, rhs: Services_Common_V1_ServerConfig) -> Bool {
        if lhs.endpoint != rhs.endpoint { return false }
        if lhs.port != rhs.port { return false }
        if lhs.useTls != rhs.useTls { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Common_V1_Nonce: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".Nonce"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "timestamp"),
        2: .standard(proto: "request_hash"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularInt64Field(value: &timestamp)
            case 2: try try decoder.decodeSingularBytesField(value: &requestHash)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if timestamp != 0 {
            try visitor.visitSingularInt64Field(value: timestamp, fieldNumber: 1)
        }
        if !requestHash.isEmpty {
            try visitor.visitSingularBytesField(value: requestHash, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Common_V1_Nonce, rhs: Services_Common_V1_Nonce) -> Bool {
        if lhs.timestamp != rhs.timestamp { return false }
        if lhs.requestHash != rhs.requestHash { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
