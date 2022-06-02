//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: services/verifiable-credentials/v1/verifiable-credentials.proto
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


/// Usage: instantiate `Services_Verifiablecredentials_V1_VerifiableCredentialClient`, then call methods of this protocol to make API calls.
public protocol Services_Verifiablecredentials_V1_VerifiableCredentialClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Services_Verifiablecredentials_V1_VerifiableCredentialClientInterceptorFactoryProtocol? { get }

  func Issue(
    _ request: Services_Verifiablecredentials_V1_IssueRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_IssueRequest, Services_Verifiablecredentials_V1_IssueResponse>

  func IssueFromTemplate(
    _ request: Services_Verifiablecredentials_V1_IssueFromTemplateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_IssueFromTemplateRequest, Services_Verifiablecredentials_V1_IssueFromTemplateResponse>

  func CheckStatus(
    _ request: Services_Verifiablecredentials_V1_CheckStatusRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_CheckStatusRequest, Services_Verifiablecredentials_V1_CheckStatusResponse>

  func UpdateStatus(
    _ request: Services_Verifiablecredentials_V1_UpdateStatusRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_UpdateStatusRequest, Services_Verifiablecredentials_V1_UpdateStatusResponse>

  func CreateProof(
    _ request: Services_Verifiablecredentials_V1_CreateProofRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_CreateProofRequest, Services_Verifiablecredentials_V1_CreateProofResponse>

  func VerifyProof(
    _ request: Services_Verifiablecredentials_V1_VerifyProofRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_VerifyProofRequest, Services_Verifiablecredentials_V1_VerifyProofResponse>

  func Send(
    _ request: Services_Verifiablecredentials_V1_SendRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Services_Verifiablecredentials_V1_SendRequest, Services_Verifiablecredentials_V1_SendResponse>
}

extension Services_Verifiablecredentials_V1_VerifiableCredentialClientProtocol {
  public var serviceName: String {
    return "services.verifiablecredentials.v1.VerifiableCredential"
  }

  /// Sign and issue a verifiable credential from a submitted document.
  /// The document must be a valid JSON-LD document.
  ///
  /// - Parameters:
  ///   - request: Request to send to Issue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func Issue(
    _ request: Services_Verifiablecredentials_V1_IssueRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_IssueRequest, Services_Verifiablecredentials_V1_IssueResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/Issue",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueInterceptors() ?? []
    )
  }

  /// Sign and issue a verifiable credential from a pre-defined template.
  /// This process will also add schema validation and 
  /// revocation registry entry in the credential.
  ///
  /// - Parameters:
  ///   - request: Request to send to IssueFromTemplate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func IssueFromTemplate(
    _ request: Services_Verifiablecredentials_V1_IssueFromTemplateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_IssueFromTemplateRequest, Services_Verifiablecredentials_V1_IssueFromTemplateResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueFromTemplateInterceptors() ?? []
    )
  }

  /// Check credential status in the revocation registry
  ///
  /// - Parameters:
  ///   - request: Request to send to CheckStatus.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func CheckStatus(
    _ request: Services_Verifiablecredentials_V1_CheckStatusRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_CheckStatusRequest, Services_Verifiablecredentials_V1_CheckStatusResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCheckStatusInterceptors() ?? []
    )
  }

  /// Update credential status by setting the revocation value
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateStatus.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func UpdateStatus(
    _ request: Services_Verifiablecredentials_V1_UpdateStatusRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_UpdateStatusRequest, Services_Verifiablecredentials_V1_UpdateStatusResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateStatusInterceptors() ?? []
    )
  }

  /// Create a proof from a signed document that is a valid
  /// verifiable credential and contains a signature from which a proof can be derived.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProof.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func CreateProof(
    _ request: Services_Verifiablecredentials_V1_CreateProofRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_CreateProofRequest, Services_Verifiablecredentials_V1_CreateProofResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProofInterceptors() ?? []
    )
  }

  /// Verifies a proof by checking the signature value, and if possible schema validation,
  /// revocation status, and issuer status against a trust registry
  ///
  /// - Parameters:
  ///   - request: Request to send to VerifyProof.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func VerifyProof(
    _ request: Services_Verifiablecredentials_V1_VerifyProofRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_VerifyProofRequest, Services_Verifiablecredentials_V1_VerifyProofResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyProofInterceptors() ?? []
    )
  }

  /// Sends a document directly to a user's email within the given ecosystem
  ///
  /// - Parameters:
  ///   - request: Request to send to Send.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func Send(
    _ request: Services_Verifiablecredentials_V1_SendRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Services_Verifiablecredentials_V1_SendRequest, Services_Verifiablecredentials_V1_SendResponse> {
    return self.makeUnaryCall(
      path: "/services.verifiablecredentials.v1.VerifiableCredential/Send",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSendInterceptors() ?? []
    )
  }
}

public protocol Services_Verifiablecredentials_V1_VerifiableCredentialClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'Issue'.
  func makeIssueInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_IssueRequest, Services_Verifiablecredentials_V1_IssueResponse>]

  /// - Returns: Interceptors to use when invoking 'IssueFromTemplate'.
  func makeIssueFromTemplateInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_IssueFromTemplateRequest, Services_Verifiablecredentials_V1_IssueFromTemplateResponse>]

  /// - Returns: Interceptors to use when invoking 'CheckStatus'.
  func makeCheckStatusInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_CheckStatusRequest, Services_Verifiablecredentials_V1_CheckStatusResponse>]

  /// - Returns: Interceptors to use when invoking 'UpdateStatus'.
  func makeUpdateStatusInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_UpdateStatusRequest, Services_Verifiablecredentials_V1_UpdateStatusResponse>]

  /// - Returns: Interceptors to use when invoking 'CreateProof'.
  func makeCreateProofInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_CreateProofRequest, Services_Verifiablecredentials_V1_CreateProofResponse>]

  /// - Returns: Interceptors to use when invoking 'VerifyProof'.
  func makeVerifyProofInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_VerifyProofRequest, Services_Verifiablecredentials_V1_VerifyProofResponse>]

  /// - Returns: Interceptors to use when invoking 'Send'.
  func makeSendInterceptors() -> [ClientInterceptor<Services_Verifiablecredentials_V1_SendRequest, Services_Verifiablecredentials_V1_SendResponse>]
}

public final class Services_Verifiablecredentials_V1_VerifiableCredentialClient: Services_Verifiablecredentials_V1_VerifiableCredentialClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Services_Verifiablecredentials_V1_VerifiableCredentialClientInterceptorFactoryProtocol?

  /// Creates a client for the services.verifiablecredentials.v1.VerifiableCredential service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Services_Verifiablecredentials_V1_VerifiableCredentialClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Services_Verifiablecredentials_V1_VerifiableCredentialProvider: CallHandlerProvider {
  var interceptors: Services_Verifiablecredentials_V1_VerifiableCredentialServerInterceptorFactoryProtocol? { get }

  /// Sign and issue a verifiable credential from a submitted document.
  /// The document must be a valid JSON-LD document.
  func Issue(request: Services_Verifiablecredentials_V1_IssueRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_IssueResponse>

  /// Sign and issue a verifiable credential from a pre-defined template.
  /// This process will also add schema validation and 
  /// revocation registry entry in the credential.
  func IssueFromTemplate(request: Services_Verifiablecredentials_V1_IssueFromTemplateRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_IssueFromTemplateResponse>

  /// Check credential status in the revocation registry
  func CheckStatus(request: Services_Verifiablecredentials_V1_CheckStatusRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_CheckStatusResponse>

  /// Update credential status by setting the revocation value
  func UpdateStatus(request: Services_Verifiablecredentials_V1_UpdateStatusRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_UpdateStatusResponse>

  /// Create a proof from a signed document that is a valid
  /// verifiable credential and contains a signature from which a proof can be derived.
  func CreateProof(request: Services_Verifiablecredentials_V1_CreateProofRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_CreateProofResponse>

  /// Verifies a proof by checking the signature value, and if possible schema validation,
  /// revocation status, and issuer status against a trust registry
  func VerifyProof(request: Services_Verifiablecredentials_V1_VerifyProofRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_VerifyProofResponse>

  /// Sends a document directly to a user's email within the given ecosystem
  func Send(request: Services_Verifiablecredentials_V1_SendRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Services_Verifiablecredentials_V1_SendResponse>
}

extension Services_Verifiablecredentials_V1_VerifiableCredentialProvider {
  public var serviceName: Substring { return "services.verifiablecredentials.v1.VerifiableCredential" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Issue":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_IssueRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_IssueResponse>(),
        interceptors: self.interceptors?.makeIssueInterceptors() ?? [],
        userFunction: self.Issue(request:context:)
      )

    case "IssueFromTemplate":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_IssueFromTemplateRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_IssueFromTemplateResponse>(),
        interceptors: self.interceptors?.makeIssueFromTemplateInterceptors() ?? [],
        userFunction: self.IssueFromTemplate(request:context:)
      )

    case "CheckStatus":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_CheckStatusRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_CheckStatusResponse>(),
        interceptors: self.interceptors?.makeCheckStatusInterceptors() ?? [],
        userFunction: self.CheckStatus(request:context:)
      )

    case "UpdateStatus":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_UpdateStatusRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_UpdateStatusResponse>(),
        interceptors: self.interceptors?.makeUpdateStatusInterceptors() ?? [],
        userFunction: self.UpdateStatus(request:context:)
      )

    case "CreateProof":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_CreateProofRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_CreateProofResponse>(),
        interceptors: self.interceptors?.makeCreateProofInterceptors() ?? [],
        userFunction: self.CreateProof(request:context:)
      )

    case "VerifyProof":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_VerifyProofRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_VerifyProofResponse>(),
        interceptors: self.interceptors?.makeVerifyProofInterceptors() ?? [],
        userFunction: self.VerifyProof(request:context:)
      )

    case "Send":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Services_Verifiablecredentials_V1_SendRequest>(),
        responseSerializer: ProtobufSerializer<Services_Verifiablecredentials_V1_SendResponse>(),
        interceptors: self.interceptors?.makeSendInterceptors() ?? [],
        userFunction: self.Send(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol Services_Verifiablecredentials_V1_VerifiableCredentialServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'Issue'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeIssueInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_IssueRequest, Services_Verifiablecredentials_V1_IssueResponse>]

  /// - Returns: Interceptors to use when handling 'IssueFromTemplate'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeIssueFromTemplateInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_IssueFromTemplateRequest, Services_Verifiablecredentials_V1_IssueFromTemplateResponse>]

  /// - Returns: Interceptors to use when handling 'CheckStatus'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCheckStatusInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_CheckStatusRequest, Services_Verifiablecredentials_V1_CheckStatusResponse>]

  /// - Returns: Interceptors to use when handling 'UpdateStatus'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeUpdateStatusInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_UpdateStatusRequest, Services_Verifiablecredentials_V1_UpdateStatusResponse>]

  /// - Returns: Interceptors to use when handling 'CreateProof'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCreateProofInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_CreateProofRequest, Services_Verifiablecredentials_V1_CreateProofResponse>]

  /// - Returns: Interceptors to use when handling 'VerifyProof'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeVerifyProofInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_VerifyProofRequest, Services_Verifiablecredentials_V1_VerifyProofResponse>]

  /// - Returns: Interceptors to use when handling 'Send'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSendInterceptors() -> [ServerInterceptor<Services_Verifiablecredentials_V1_SendRequest, Services_Verifiablecredentials_V1_SendResponse>]
}
