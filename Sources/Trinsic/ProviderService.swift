//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
import GRPC

public class ProviderService: ServiceBase {
    var client: Services_Provider_V1_ProviderNIOClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Provider_V1_ProviderNIOClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Provider_V1_ProviderNIOClient(channel: createChannel())
    }

    public func createEcosystem(request: Services_Provider_V1_CreateEcosystemRequest) throws -> Services_Provider_V1_CreateEcosystemResponse {
        if !request.name.isEmpty || (request.hasDetails && !request.details.email.isEmpty) {
            return try client!.CreateEcosystem(request, callOptions: buildMetadata(request))
                .response
                .wait()
        } else {
            return try client!.CreateEcosystem(request).response.wait()
        }
    }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk-swift/sdk-swift/Sources/Trinsic/ProviderService.swift

    @available(*, deprecated, message: "This will be removed June 1, 2023")
    public func updateEcosystem(request: Services_Provider_V1_UpdateEcosystemRequest) throws -> Services_Provider_V1_UpdateEcosystemResponse {
        return try client!.UpdateEcosystem(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func getOberonKey(request: Services_Provider_V1_GetOberonKeyRequest) throws -> Services_Provider_V1_GetOberonKeyResponse {
        return try client!.GetOberonKey(request, callOptions: try buildMetadata(nil))
            .response
            .wait()
    }
    
    public func upgradeDID(request: Services_Provider_V1_UpgradeDidRequest) throws -> Services_Provider_V1_UpgradeDidResponse {
        return try client!.UpgradeDID(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
    
    public func searchWalletConfigurations(request: Services_Provider_V1_SearchWalletConfigurationsRequest) throws -> Services_Provider_V1_SearchWalletConfigurationResponse {
        return try client!.SearchWalletConfigurations(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
