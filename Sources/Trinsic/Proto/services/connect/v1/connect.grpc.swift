//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: services/connect/v1/connect.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf

/// The Connect service provides access to Trinsic Connect, a reusable identity verification service.
///
/// Usage: instantiate `Services_Connect_V1_ConnectClient`, then call methods of this protocol to make API calls.
public protocol Services_Connect_V1_ConnectClientProtocol: GRPCClient {
    var serviceName: String { get }
    var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? { get }

    func CreateSession(
        _ request: Services_Connect_V1_CreateSessionRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse>

    func CancelSession(
        _ request: Services_Connect_V1_CancelSessionRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse>

    func GetSession(
        _ request: Services_Connect_V1_GetSessionRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse>

    func ListSessions(
        _ request: Services_Connect_V1_ListSessionsRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse>
}

public extension Services_Connect_V1_ConnectClientProtocol {
    var serviceName: String {
        "services.connect.v1.Connect"
    }

    /// Create an IDVSession
    ///
    /// - Parameters:
    ///   - request: Request to send to CreateSession.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    func CreateSession(
        _ request: Services_Connect_V1_CreateSessionRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse> {
        makeUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CreateSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCreateSessionInterceptors() ?? []
        )
    }

    /// Cancel an IDVSession
    ///
    /// - Parameters:
    ///   - request: Request to send to CancelSession.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    func CancelSession(
        _ request: Services_Connect_V1_CancelSessionRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse> {
        makeUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CancelSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCancelSessionInterceptors() ?? []
        )
    }

    /// Get an IDVSession
    ///
    /// - Parameters:
    ///   - request: Request to send to GetSession.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    func GetSession(
        _ request: Services_Connect_V1_GetSessionRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse> {
        makeUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.GetSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetSessionInterceptors() ?? []
        )
    }

    /// List IDVSessions created by the calling wallet
    ///
    /// - Parameters:
    ///   - request: Request to send to ListSessions.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    func ListSessions(
        _ request: Services_Connect_V1_ListSessionsRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse> {
        makeUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.ListSessions.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeListSessionsInterceptors() ?? []
        )
    }
}

@available(*, deprecated)
extension Services_Connect_V1_ConnectClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Services_Connect_V1_ConnectNIOClient")
public final class Services_Connect_V1_ConnectClient: Services_Connect_V1_ConnectClientProtocol {
    private let lock = Lock()
    private var _defaultCallOptions: CallOptions
    private var _interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol?
    public let channel: GRPCChannel
    public var defaultCallOptions: CallOptions {
        get { lock.withLock { self._defaultCallOptions } }
        set { lock.withLockVoid { self._defaultCallOptions = newValue } }
    }

    public var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? {
        get { lock.withLock { self._interceptors } }
        set { lock.withLockVoid { self._interceptors = newValue } }
    }

    /// Creates a client for the services.connect.v1.Connect service.
    ///
    /// - Parameters:
    ///   - channel: `GRPCChannel` to the service host.
    ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
    ///   - interceptors: A factory providing interceptors for each RPC.
    public init(
        channel: GRPCChannel,
        defaultCallOptions: CallOptions = CallOptions(),
        interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? = nil
    ) {
        self.channel = channel
        _defaultCallOptions = defaultCallOptions
        _interceptors = interceptors
    }
}

public struct Services_Connect_V1_ConnectNIOClient: Services_Connect_V1_ConnectClientProtocol {
    public var channel: GRPCChannel
    public var defaultCallOptions: CallOptions
    public var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol?

    /// Creates a client for the services.connect.v1.Connect service.
    ///
    /// - Parameters:
    ///   - channel: `GRPCChannel` to the service host.
    ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
    ///   - interceptors: A factory providing interceptors for each RPC.
    public init(
        channel: GRPCChannel,
        defaultCallOptions: CallOptions = CallOptions(),
        interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? = nil
    ) {
        self.channel = channel
        self.defaultCallOptions = defaultCallOptions
        self.interceptors = interceptors
    }
}

/// The Connect service provides access to Trinsic Connect, a reusable identity verification service.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Services_Connect_V1_ConnectAsyncClientProtocol: GRPCClient {
    static var serviceDescriptor: GRPCServiceDescriptor { get }
    var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? { get }

    func makeCreateSessionCall(
        _ request: Services_Connect_V1_CreateSessionRequest,
        callOptions: CallOptions?
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse>

    func makeCancelSessionCall(
        _ request: Services_Connect_V1_CancelSessionRequest,
        callOptions: CallOptions?
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse>

    func makeGetSessionCall(
        _ request: Services_Connect_V1_GetSessionRequest,
        callOptions: CallOptions?
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse>

    func makeListSessionsCall(
        _ request: Services_Connect_V1_ListSessionsRequest,
        callOptions: CallOptions?
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public extension Services_Connect_V1_ConnectAsyncClientProtocol {
    static var serviceDescriptor: GRPCServiceDescriptor {
        Services_Connect_V1_ConnectClientMetadata.serviceDescriptor
    }

    var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? {
        nil
    }

    func makeCreateSessionCall(
        _ request: Services_Connect_V1_CreateSessionRequest,
        callOptions: CallOptions? = nil
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse> {
        makeAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CreateSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCreateSessionInterceptors() ?? []
        )
    }

    func makeCancelSessionCall(
        _ request: Services_Connect_V1_CancelSessionRequest,
        callOptions: CallOptions? = nil
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse> {
        makeAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CancelSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCancelSessionInterceptors() ?? []
        )
    }

    func makeGetSessionCall(
        _ request: Services_Connect_V1_GetSessionRequest,
        callOptions: CallOptions? = nil
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse> {
        makeAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.GetSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetSessionInterceptors() ?? []
        )
    }

    func makeListSessionsCall(
        _ request: Services_Connect_V1_ListSessionsRequest,
        callOptions: CallOptions? = nil
    ) -> GRPCAsyncUnaryCall<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse> {
        makeAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.ListSessions.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeListSessionsInterceptors() ?? []
        )
    }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public extension Services_Connect_V1_ConnectAsyncClientProtocol {
    func CreateSession(
        _ request: Services_Connect_V1_CreateSessionRequest,
        callOptions: CallOptions? = nil
    ) async throws -> Services_Connect_V1_CreateSessionResponse {
        try await performAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CreateSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCreateSessionInterceptors() ?? []
        )
    }

    func CancelSession(
        _ request: Services_Connect_V1_CancelSessionRequest,
        callOptions: CallOptions? = nil
    ) async throws -> Services_Connect_V1_CancelSessionResponse {
        try await performAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.CancelSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeCancelSessionInterceptors() ?? []
        )
    }

    func GetSession(
        _ request: Services_Connect_V1_GetSessionRequest,
        callOptions: CallOptions? = nil
    ) async throws -> Services_Connect_V1_GetSessionResponse {
        try await performAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.GetSession.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetSessionInterceptors() ?? []
        )
    }

    func ListSessions(
        _ request: Services_Connect_V1_ListSessionsRequest,
        callOptions: CallOptions? = nil
    ) async throws -> Services_Connect_V1_ListSessionsResponse {
        try await performAsyncUnaryCall(
            path: Services_Connect_V1_ConnectClientMetadata.Methods.ListSessions.path,
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeListSessionsInterceptors() ?? []
        )
    }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Services_Connect_V1_ConnectAsyncClient: Services_Connect_V1_ConnectAsyncClientProtocol {
    public var channel: GRPCChannel
    public var defaultCallOptions: CallOptions
    public var interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol?

    public init(
        channel: GRPCChannel,
        defaultCallOptions: CallOptions = CallOptions(),
        interceptors: Services_Connect_V1_ConnectClientInterceptorFactoryProtocol? = nil
    ) {
        self.channel = channel
        self.defaultCallOptions = defaultCallOptions
        self.interceptors = interceptors
    }
}

public protocol Services_Connect_V1_ConnectClientInterceptorFactoryProtocol: Sendable {
    /// - Returns: Interceptors to use when invoking 'CreateSession'.
    func makeCreateSessionInterceptors() -> [ClientInterceptor<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse>]

    /// - Returns: Interceptors to use when invoking 'CancelSession'.
    func makeCancelSessionInterceptors() -> [ClientInterceptor<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse>]

    /// - Returns: Interceptors to use when invoking 'GetSession'.
    func makeGetSessionInterceptors() -> [ClientInterceptor<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse>]

    /// - Returns: Interceptors to use when invoking 'ListSessions'.
    func makeListSessionsInterceptors() -> [ClientInterceptor<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse>]
}

public enum Services_Connect_V1_ConnectClientMetadata {
    public static let serviceDescriptor = GRPCServiceDescriptor(
        name: "Connect",
        fullName: "services.connect.v1.Connect",
        methods: [
            Services_Connect_V1_ConnectClientMetadata.Methods.CreateSession,
            Services_Connect_V1_ConnectClientMetadata.Methods.CancelSession,
            Services_Connect_V1_ConnectClientMetadata.Methods.GetSession,
            Services_Connect_V1_ConnectClientMetadata.Methods.ListSessions,
        ]
    )

    public enum Methods {
        public static let CreateSession = GRPCMethodDescriptor(
            name: "CreateSession",
            path: "/services.connect.v1.Connect/CreateSession",
            type: GRPCCallType.unary
        )

        public static let CancelSession = GRPCMethodDescriptor(
            name: "CancelSession",
            path: "/services.connect.v1.Connect/CancelSession",
            type: GRPCCallType.unary
        )

        public static let GetSession = GRPCMethodDescriptor(
            name: "GetSession",
            path: "/services.connect.v1.Connect/GetSession",
            type: GRPCCallType.unary
        )

        public static let ListSessions = GRPCMethodDescriptor(
            name: "ListSessions",
            path: "/services.connect.v1.Connect/ListSessions",
            type: GRPCCallType.unary
        )
    }
}

/// The Connect service provides access to Trinsic Connect, a reusable identity verification service.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Services_Connect_V1_ConnectProvider: CallHandlerProvider {
    var interceptors: Services_Connect_V1_ConnectServerInterceptorFactoryProtocol? { get }

    /// Create an IDVSession
    func CreateSession(request: Services_Connect_V1_CreateSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Connect_V1_CreateSessionResponse>

    /// Cancel an IDVSession
    func CancelSession(request: Services_Connect_V1_CancelSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Connect_V1_CancelSessionResponse>

    /// Get an IDVSession
    func GetSession(request: Services_Connect_V1_GetSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Connect_V1_GetSessionResponse>

    /// List IDVSessions created by the calling wallet
    func ListSessions(request: Services_Connect_V1_ListSessionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Connect_V1_ListSessionsResponse>
}

public extension Services_Connect_V1_ConnectProvider {
    var serviceName: Substring {
        Services_Connect_V1_ConnectServerMetadata.serviceDescriptor.fullName[...]
    }

    /// Determines, calls and returns the appropriate request handler, depending on the request's method.
    /// Returns nil for methods not handled by this service.
    func handle(
        method name: Substring,
        context: CallHandlerContext
    ) -> GRPCServerHandlerProtocol? {
        switch name {
        case "CreateSession":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_CreateSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_CreateSessionResponse>(),
                interceptors: interceptors?.makeCreateSessionInterceptors() ?? [],
                userFunction: CreateSession(request:context:)
            )

        case "CancelSession":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_CancelSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_CancelSessionResponse>(),
                interceptors: interceptors?.makeCancelSessionInterceptors() ?? [],
                userFunction: CancelSession(request:context:)
            )

        case "GetSession":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_GetSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_GetSessionResponse>(),
                interceptors: interceptors?.makeGetSessionInterceptors() ?? [],
                userFunction: GetSession(request:context:)
            )

        case "ListSessions":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_ListSessionsRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_ListSessionsResponse>(),
                interceptors: interceptors?.makeListSessionsInterceptors() ?? [],
                userFunction: ListSessions(request:context:)
            )

        default:
            return nil
        }
    }
}

/// The Connect service provides access to Trinsic Connect, a reusable identity verification service.
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Services_Connect_V1_ConnectAsyncProvider: CallHandlerProvider, Sendable {
    static var serviceDescriptor: GRPCServiceDescriptor { get }
    var interceptors: Services_Connect_V1_ConnectServerInterceptorFactoryProtocol? { get }

    /// Create an IDVSession
    func CreateSession(
        request: Services_Connect_V1_CreateSessionRequest,
        context: GRPCAsyncServerCallContext
    ) async throws -> Services_Connect_V1_CreateSessionResponse

    /// Cancel an IDVSession
    func CancelSession(
        request: Services_Connect_V1_CancelSessionRequest,
        context: GRPCAsyncServerCallContext
    ) async throws -> Services_Connect_V1_CancelSessionResponse

    /// Get an IDVSession
    func GetSession(
        request: Services_Connect_V1_GetSessionRequest,
        context: GRPCAsyncServerCallContext
    ) async throws -> Services_Connect_V1_GetSessionResponse

    /// List IDVSessions created by the calling wallet
    func ListSessions(
        request: Services_Connect_V1_ListSessionsRequest,
        context: GRPCAsyncServerCallContext
    ) async throws -> Services_Connect_V1_ListSessionsResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public extension Services_Connect_V1_ConnectAsyncProvider {
    static var serviceDescriptor: GRPCServiceDescriptor {
        Services_Connect_V1_ConnectServerMetadata.serviceDescriptor
    }

    var serviceName: Substring {
        Services_Connect_V1_ConnectServerMetadata.serviceDescriptor.fullName[...]
    }

    var interceptors: Services_Connect_V1_ConnectServerInterceptorFactoryProtocol? {
        nil
    }

    func handle(
        method name: Substring,
        context: CallHandlerContext
    ) -> GRPCServerHandlerProtocol? {
        switch name {
        case "CreateSession":
            return GRPCAsyncServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_CreateSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_CreateSessionResponse>(),
                interceptors: interceptors?.makeCreateSessionInterceptors() ?? [],
                wrapping: { try await self.CreateSession(request: $0, context: $1) }
            )

        case "CancelSession":
            return GRPCAsyncServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_CancelSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_CancelSessionResponse>(),
                interceptors: interceptors?.makeCancelSessionInterceptors() ?? [],
                wrapping: { try await self.CancelSession(request: $0, context: $1) }
            )

        case "GetSession":
            return GRPCAsyncServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_GetSessionRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_GetSessionResponse>(),
                interceptors: interceptors?.makeGetSessionInterceptors() ?? [],
                wrapping: { try await self.GetSession(request: $0, context: $1) }
            )

        case "ListSessions":
            return GRPCAsyncServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Services_Connect_V1_ListSessionsRequest>(),
                responseSerializer: ProtobufSerializer<Services_Connect_V1_ListSessionsResponse>(),
                interceptors: interceptors?.makeListSessionsInterceptors() ?? [],
                wrapping: { try await self.ListSessions(request: $0, context: $1) }
            )

        default:
            return nil
        }
    }
}

public protocol Services_Connect_V1_ConnectServerInterceptorFactoryProtocol: Sendable {
    /// - Returns: Interceptors to use when handling 'CreateSession'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeCreateSessionInterceptors() -> [ServerInterceptor<Services_Connect_V1_CreateSessionRequest, Services_Connect_V1_CreateSessionResponse>]

    /// - Returns: Interceptors to use when handling 'CancelSession'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeCancelSessionInterceptors() -> [ServerInterceptor<Services_Connect_V1_CancelSessionRequest, Services_Connect_V1_CancelSessionResponse>]

    /// - Returns: Interceptors to use when handling 'GetSession'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeGetSessionInterceptors() -> [ServerInterceptor<Services_Connect_V1_GetSessionRequest, Services_Connect_V1_GetSessionResponse>]

    /// - Returns: Interceptors to use when handling 'ListSessions'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeListSessionsInterceptors() -> [ServerInterceptor<Services_Connect_V1_ListSessionsRequest, Services_Connect_V1_ListSessionsResponse>]
}

public enum Services_Connect_V1_ConnectServerMetadata {
    public static let serviceDescriptor = GRPCServiceDescriptor(
        name: "Connect",
        fullName: "services.connect.v1.Connect",
        methods: [
            Services_Connect_V1_ConnectServerMetadata.Methods.CreateSession,
            Services_Connect_V1_ConnectServerMetadata.Methods.CancelSession,
            Services_Connect_V1_ConnectServerMetadata.Methods.GetSession,
            Services_Connect_V1_ConnectServerMetadata.Methods.ListSessions,
        ]
    )

    public enum Methods {
        public static let CreateSession = GRPCMethodDescriptor(
            name: "CreateSession",
            path: "/services.connect.v1.Connect/CreateSession",
            type: GRPCCallType.unary
        )

        public static let CancelSession = GRPCMethodDescriptor(
            name: "CancelSession",
            path: "/services.connect.v1.Connect/CancelSession",
            type: GRPCCallType.unary
        )

        public static let GetSession = GRPCMethodDescriptor(
            name: "GetSession",
            path: "/services.connect.v1.Connect/GetSession",
            type: GRPCCallType.unary
        )

        public static let ListSessions = GRPCMethodDescriptor(
            name: "ListSessions",
            path: "/services.connect.v1.Connect/ListSessions",
            type: GRPCCallType.unary
        )
    }
}
