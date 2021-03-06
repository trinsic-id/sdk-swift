//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: services/common/v1/common.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf

/// Usage: instantiate `Services_Common_V1_CommonClient`, then call methods of this protocol to make API calls.
public protocol Services_Common_V1_CommonClientProtocol: GRPCClient {
    var serviceName: String { get }
    var interceptors: Services_Common_V1_CommonClientInterceptorFactoryProtocol? { get }

    func Request(
        _ request: Pbmse_V1_EncryptedMessage,
        callOptions: CallOptions?
    ) -> UnaryCall<Pbmse_V1_EncryptedMessage, Pbmse_V1_EncryptedMessage>
}

public extension Services_Common_V1_CommonClientProtocol {
    var serviceName: String {
        return "services.common.v1.Common"
    }

    /// Unary call to Request
    ///
    /// - Parameters:
    ///   - request: Request to send to Request.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    func Request(
        _ request: Pbmse_V1_EncryptedMessage,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Pbmse_V1_EncryptedMessage, Pbmse_V1_EncryptedMessage> {
        return makeUnaryCall(
            path: "/services.common.v1.Common/Request",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeRequestInterceptors() ?? []
        )
    }
}

public protocol Services_Common_V1_CommonClientInterceptorFactoryProtocol {
    /// - Returns: Interceptors to use when invoking 'Request'.
    func makeRequestInterceptors() -> [ClientInterceptor<Pbmse_V1_EncryptedMessage, Pbmse_V1_EncryptedMessage>]
}

public final class Services_Common_V1_CommonClient: Services_Common_V1_CommonClientProtocol {
    public let channel: GRPCChannel
    public var defaultCallOptions: CallOptions
    public var interceptors: Services_Common_V1_CommonClientInterceptorFactoryProtocol?

    /// Creates a client for the services.common.v1.Common service.
    ///
    /// - Parameters:
    ///   - channel: `GRPCChannel` to the service host.
    ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
    ///   - interceptors: A factory providing interceptors for each RPC.
    public init(
        channel: GRPCChannel,
        defaultCallOptions: CallOptions = CallOptions(),
        interceptors: Services_Common_V1_CommonClientInterceptorFactoryProtocol? = nil
    ) {
        self.channel = channel
        self.defaultCallOptions = defaultCallOptions
        self.interceptors = interceptors
    }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Services_Common_V1_CommonProvider: CallHandlerProvider {
    var interceptors: Services_Common_V1_CommonServerInterceptorFactoryProtocol? { get }

    func Request(request: Pbmse_V1_EncryptedMessage, context: StatusOnlyCallContext) -> EventLoopFuture<Pbmse_V1_EncryptedMessage>
}

public extension Services_Common_V1_CommonProvider {
    var serviceName: Substring { return "services.common.v1.Common" }

    /// Determines, calls and returns the appropriate request handler, depending on the request's method.
    /// Returns nil for methods not handled by this service.
    func handle(
        method name: Substring,
        context: CallHandlerContext
    ) -> GRPCServerHandlerProtocol? {
        switch name {
        case "Request":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Pbmse_V1_EncryptedMessage>(),
                responseSerializer: ProtobufSerializer<Pbmse_V1_EncryptedMessage>(),
                interceptors: interceptors?.makeRequestInterceptors() ?? [],
                userFunction: Request(request:context:)
            )

        default:
            return nil
        }
    }
}

public protocol Services_Common_V1_CommonServerInterceptorFactoryProtocol {
    /// - Returns: Interceptors to use when handling 'Request'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeRequestInterceptors() -> [ServerInterceptor<Pbmse_V1_EncryptedMessage, Pbmse_V1_EncryptedMessage>]
}
