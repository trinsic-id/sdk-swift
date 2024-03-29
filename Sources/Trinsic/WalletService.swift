//
//  WalletService.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
import GRPC

public class WalletService: ServiceBase {
    var client: Services_Universalwallet_V1_UniversalWalletNIOClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Universalwallet_V1_UniversalWalletNIOClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Universalwallet_V1_UniversalWalletNIOClient(channel: createChannel())
    }

    public func search() throws -> Services_Universalwallet_V1_SearchResponse {
        try search(request: Services_Universalwallet_V1_SearchRequest())
    }

    public func searchWallet(request: Services_Universalwallet_V1_SearchRequest = Services_Universalwallet_V1_SearchRequest()) throws -> Services_Universalwallet_V1_SearchResponse {
        var request = request
        if request.query.isEmpty {
            request.query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100"
        }
        return try client!.Search(request, callOptions: buildMetadata(request))
            .response
            .wait()
    }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk-swift/sdk-swift/Sources/Trinsic/WalletService.swift

    
    public func getItem(request: Services_Universalwallet_V1_GetItemRequest) throws -> Services_Universalwallet_V1_GetItemResponse {
        return try client!.GetItem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func search(request: Services_Universalwallet_V1_SearchRequest) throws -> Services_Universalwallet_V1_SearchResponse {
        return try client!.Search(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func insertItem(request: Services_Universalwallet_V1_InsertItemRequest) throws -> Services_Universalwallet_V1_InsertItemResponse {
        return try client!.InsertItem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func updateItem(request: Services_Universalwallet_V1_UpdateItemRequest) throws -> Services_Universalwallet_V1_UpdateItemResponse {
        return try client!.UpdateItem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func deleteItem(request: Services_Universalwallet_V1_DeleteItemRequest) throws -> Services_Universalwallet_V1_DeleteItemResponse {
        return try client!.DeleteItem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func deleteWallet(request: Services_Universalwallet_V1_DeleteWalletRequest) throws -> Services_Universalwallet_V1_DeleteWalletResponse {
        return try client!.DeleteWallet(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func createWallet(request: Services_Universalwallet_V1_CreateWalletRequest) throws -> Services_Universalwallet_V1_CreateWalletResponse {
        return try client!.CreateWallet(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func getWalletInfo(request: Services_Universalwallet_V1_GetWalletInfoRequest) throws -> Services_Universalwallet_V1_GetWalletInfoResponse {
        return try client!.GetWalletInfo(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func getMyInfo(request: Services_Universalwallet_V1_GetMyInfoRequest) throws -> Services_Universalwallet_V1_GetMyInfoResponse {
        return try client!.GetMyInfo(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func getWalletFromExternalIdentity(request: Services_Universalwallet_V1_GetWalletFromExternalIdentityRequest) throws -> Services_Universalwallet_V1_GetWalletFromExternalIdentityResponse {
        return try client!.GetWalletFromExternalIdentity(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func generateAuthToken(request: Services_Universalwallet_V1_GenerateAuthTokenRequest) throws -> Services_Universalwallet_V1_GenerateAuthTokenResponse {
        return try client!.GenerateAuthToken(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func revokeAuthToken(request: Services_Universalwallet_V1_RevokeAuthTokenRequest) throws -> Services_Universalwallet_V1_RevokeAuthTokenResponse {
        return try client!.RevokeAuthToken(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func addExternalIdentityInit(request: Services_Universalwallet_V1_AddExternalIdentityInitRequest) throws -> Services_Universalwallet_V1_AddExternalIdentityInitResponse {
        return try client!.AddExternalIdentityInit(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func addExternalIdentityConfirm(request: Services_Universalwallet_V1_AddExternalIdentityConfirmRequest) throws -> Services_Universalwallet_V1_AddExternalIdentityConfirmResponse {
        return try client!.AddExternalIdentityConfirm(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func removeExternalIdentity(request: Services_Universalwallet_V1_RemoveExternalIdentityRequest) throws -> Services_Universalwallet_V1_RemoveExternalIdentityResponse {
        return try client!.RemoveExternalIdentity(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func authenticateInit(request: Services_Universalwallet_V1_AuthenticateInitRequest) throws -> Services_Universalwallet_V1_AuthenticateInitResponse {
        return try client!.AuthenticateInit(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func authenticateConfirm(request: Services_Universalwallet_V1_AuthenticateConfirmRequest) throws -> Services_Universalwallet_V1_AuthenticateConfirmResponse {
        return try client!.AuthenticateConfirm(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func authenticateResendCode(request: Services_Universalwallet_V1_AuthenticateResendCodeRequest) throws -> Services_Universalwallet_V1_AuthenticateResendCodeResponse {
        return try client!.AuthenticateResendCode(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func listWallets(request: Services_Universalwallet_V1_ListWalletsRequest) throws -> Services_Universalwallet_V1_ListWalletsResponse {
        return try client!.ListWallets(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func listByVerificationTemplate(request: Services_Universalwallet_V1_ListByVerificationTemplateRequest) throws -> Services_Universalwallet_V1_ListByVerificationTemplateResponse {
        return try client!.ListByVerificationTemplate(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
