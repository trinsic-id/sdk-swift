// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: services/universal-wallet/v1/universal-wallet.proto
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

/// Request to search items in wallet
public struct Services_Universalwallet_V1_SearchRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// SQL Query to execute against items in wallet
    public var query: String = .init()

    /// Token provided by previous `SearchResponse`
    /// if more data is available for query
    public var continuationToken: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Response to `SearchRequest`
public struct Services_Universalwallet_V1_SearchResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Array of query results, as JSON strings
    public var items: [String] = []

    /// Whether more results are available for this query via `continuation_token`
    public var hasMore_p: Bool = false

    /// Token to fetch next set of results via `SearchRequest`
    public var continuationToken: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Request to fetch an item from wallet
public struct Services_Universalwallet_V1_GetItemRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// ID of item in wallet
    public var itemID: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Response to `GetItemRequest`
public struct Services_Universalwallet_V1_GetItemResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Item data as a JSON string
    public var itemJson: String = .init()

    /// Type of item specified when item was inserted into wallet
    public var itemType: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Request to update item in wallet
public struct Services_Universalwallet_V1_UpdateItemRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// ID of item in wallet
    public var itemID: String = .init()

    /// Item type (ex. "VerifiableCredential")
    public var itemType: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Response to `UpdateItemRequest`
public struct Services_Universalwallet_V1_UpdateItemResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Request to insert a JSON document into a wallet
public struct Services_Universalwallet_V1_InsertItemRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Document to insert; must be stringified JSON
    public var itemJson: String = .init()

    /// Item type (ex. "VerifiableCredential")
    public var itemType: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Response to `InsertItemRequest`
public struct Services_Universalwallet_V1_InsertItemResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// ID of item inserted into wallet
    public var itemID: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Request to delete an item in a wallet
public struct Services_Universalwallet_V1_DeleteItemRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// ID of item to delete
    public var itemID: String = .init()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

/// Response to `DeleteItemRequest`
public struct Services_Universalwallet_V1_DeleteItemResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
    extension Services_Universalwallet_V1_SearchRequest: @unchecked Sendable {}
    extension Services_Universalwallet_V1_SearchResponse: @unchecked Sendable {}
    extension Services_Universalwallet_V1_GetItemRequest: @unchecked Sendable {}
    extension Services_Universalwallet_V1_GetItemResponse: @unchecked Sendable {}
    extension Services_Universalwallet_V1_UpdateItemRequest: @unchecked Sendable {}
    extension Services_Universalwallet_V1_UpdateItemResponse: @unchecked Sendable {}
    extension Services_Universalwallet_V1_InsertItemRequest: @unchecked Sendable {}
    extension Services_Universalwallet_V1_InsertItemResponse: @unchecked Sendable {}
    extension Services_Universalwallet_V1_DeleteItemRequest: @unchecked Sendable {}
    extension Services_Universalwallet_V1_DeleteItemResponse: @unchecked Sendable {}
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "services.universalwallet.v1"

extension Services_Universalwallet_V1_SearchRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".SearchRequest"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "query"),
        2: .standard(proto: "continuation_token"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &query)
            case 2: try try decoder.decodeSingularStringField(value: &continuationToken)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !query.isEmpty {
            try visitor.visitSingularStringField(value: query, fieldNumber: 1)
        }
        if !continuationToken.isEmpty {
            try visitor.visitSingularStringField(value: continuationToken, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_SearchRequest, rhs: Services_Universalwallet_V1_SearchRequest) -> Bool {
        if lhs.query != rhs.query { return false }
        if lhs.continuationToken != rhs.continuationToken { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_SearchResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".SearchResponse"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "items"),
        2: .standard(proto: "has_more"),
        4: .standard(proto: "continuation_token"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeRepeatedStringField(value: &items)
            case 2: try try decoder.decodeSingularBoolField(value: &hasMore_p)
            case 4: try try decoder.decodeSingularStringField(value: &continuationToken)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !items.isEmpty {
            try visitor.visitRepeatedStringField(value: items, fieldNumber: 1)
        }
        if hasMore_p != false {
            try visitor.visitSingularBoolField(value: hasMore_p, fieldNumber: 2)
        }
        if !continuationToken.isEmpty {
            try visitor.visitSingularStringField(value: continuationToken, fieldNumber: 4)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_SearchResponse, rhs: Services_Universalwallet_V1_SearchResponse) -> Bool {
        if lhs.items != rhs.items { return false }
        if lhs.hasMore_p != rhs.hasMore_p { return false }
        if lhs.continuationToken != rhs.continuationToken { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_GetItemRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".GetItemRequest"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "item_id"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &itemID)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemID.isEmpty {
            try visitor.visitSingularStringField(value: itemID, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_GetItemRequest, rhs: Services_Universalwallet_V1_GetItemRequest) -> Bool {
        if lhs.itemID != rhs.itemID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_GetItemResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".GetItemResponse"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "item_json"),
        2: .standard(proto: "item_type"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &itemJson)
            case 2: try try decoder.decodeSingularStringField(value: &itemType)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemJson.isEmpty {
            try visitor.visitSingularStringField(value: itemJson, fieldNumber: 1)
        }
        if !itemType.isEmpty {
            try visitor.visitSingularStringField(value: itemType, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_GetItemResponse, rhs: Services_Universalwallet_V1_GetItemResponse) -> Bool {
        if lhs.itemJson != rhs.itemJson { return false }
        if lhs.itemType != rhs.itemType { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_UpdateItemRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".UpdateItemRequest"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "item_id"),
        2: .standard(proto: "item_type"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &itemID)
            case 2: try try decoder.decodeSingularStringField(value: &itemType)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemID.isEmpty {
            try visitor.visitSingularStringField(value: itemID, fieldNumber: 1)
        }
        if !itemType.isEmpty {
            try visitor.visitSingularStringField(value: itemType, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_UpdateItemRequest, rhs: Services_Universalwallet_V1_UpdateItemRequest) -> Bool {
        if lhs.itemID != rhs.itemID { return false }
        if lhs.itemType != rhs.itemType { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_UpdateItemResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".UpdateItemResponse"
    public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let _ = try decoder.nextFieldNumber() {}
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_UpdateItemResponse, rhs: Services_Universalwallet_V1_UpdateItemResponse) -> Bool {
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_InsertItemRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".InsertItemRequest"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "item_json"),
        2: .standard(proto: "item_type"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &itemJson)
            case 2: try try decoder.decodeSingularStringField(value: &itemType)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemJson.isEmpty {
            try visitor.visitSingularStringField(value: itemJson, fieldNumber: 1)
        }
        if !itemType.isEmpty {
            try visitor.visitSingularStringField(value: itemType, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_InsertItemRequest, rhs: Services_Universalwallet_V1_InsertItemRequest) -> Bool {
        if lhs.itemJson != rhs.itemJson { return false }
        if lhs.itemType != rhs.itemType { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_InsertItemResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".InsertItemResponse"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        2: .standard(proto: "item_id"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 2: try try decoder.decodeSingularStringField(value: &itemID)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemID.isEmpty {
            try visitor.visitSingularStringField(value: itemID, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_InsertItemResponse, rhs: Services_Universalwallet_V1_InsertItemResponse) -> Bool {
        if lhs.itemID != rhs.itemID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_DeleteItemRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".DeleteItemRequest"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "item_id"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try try decoder.decodeSingularStringField(value: &itemID)
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !itemID.isEmpty {
            try visitor.visitSingularStringField(value: itemID, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_DeleteItemRequest, rhs: Services_Universalwallet_V1_DeleteItemRequest) -> Bool {
        if lhs.itemID != rhs.itemID { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Services_Universalwallet_V1_DeleteItemResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".DeleteItemResponse"
    public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let _ = try decoder.nextFieldNumber() {}
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Services_Universalwallet_V1_DeleteItemResponse, rhs: Services_Universalwallet_V1_DeleteItemResponse) -> Bool {
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
