//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
import GRPC

public class ProviderService: ServiceBase {
    var client: Services_Provider_V1_ProviderClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Provider_V1_ProviderClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Provider_V1_ProviderClient(channel: createChannel())
    }

    public func createEcosystem(request: Services_Provider_V1_CreateEcosystemRequest) throws -> Services_Provider_V1_CreateEcosystemResponse {
        if !request.name.isEmpty || (request.hasDetails && !request.details.email.isEmpty) {
            return try client!.CreateEcosystem(request, callOptions: try buildMetadata(request))
                .response
                .wait()
        } else {
            return try client!.CreateEcosystem(request).response.wait()
        }
    }
	
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: ..\sdk-swift\Sources\Trinsic\providerService.swift

    public func updateEcosystem(request: Services_Provider_V1_UpdateEcosystemRequest) throws -> Services_Provider_V1_UpdateEcosystemResponse {
        return try client!.UpdateEcosystem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func grantAuthorization(request: Services_Provider_V1_GrantAuthorizationRequest) throws -> Services_Provider_V1_GrantAuthorizationResponse {
        return try client!.GrantAuthorization(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func revokeAuthorization(request: Services_Provider_V1_RevokeAuthorizationRequest) throws -> Services_Provider_V1_RevokeAuthorizationResponse {
        return try client!.RevokeAuthorization(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func getAuthorizations(request: Services_Provider_V1_GetAuthorizationsRequest) throws -> Services_Provider_V1_GetAuthorizationsResponse {
        return try client!.GetAuthorizations(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func addWebhook(request: Services_Provider_V1_AddWebhookRequest) throws -> Services_Provider_V1_AddWebhookResponse {
        return try client!.AddWebhook(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func deleteWebhook(request: Services_Provider_V1_DeleteWebhookRequest) throws -> Services_Provider_V1_DeleteWebhookResponse {
        return try client!.DeleteWebhook(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func ecosystemInfo(request: Services_Provider_V1_EcosystemInfoRequest) throws -> Services_Provider_V1_EcosystemInfoResponse {
        return try client!.EcosystemInfo(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func generateToken(request: Services_Provider_V1_GenerateTokenRequest) throws -> Services_Provider_V1_GenerateTokenResponse {
        return try client!.GenerateToken(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func invite(request: Services_Provider_V1_InviteRequest) throws -> Services_Provider_V1_InviteResponse {
        return try client!.Invite(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func invitationStatus(request: Services_Provider_V1_InvitationStatusRequest) throws -> Services_Provider_V1_InvitationStatusResponse {
        return try client!.InvitationStatus(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    public func getOberonKey(request: Services_Provider_V1_GetOberonKeyRequest) throws -> Services_Provider_V1_GetOberonKeyResponse {
        return try client!.GetOberonKey(request, callOptions: try buildMetadata(nil))
            .response
            .wait()
    }
    public func getEventToken(request: Services_Provider_V1_GetEventTokenRequest) throws -> Services_Provider_V1_GetEventTokenResponse {
        return try client!.GetEventToken(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
