//
//  File.swift
//  
//
//  Created by Scott Phillips on 6/13/22.
//

import Foundation



public class TrinsicService : ServiceBase {
    private var _accountService: AccountService;
    private var _credentialService: CredentialService;
    private var _providerService: ProviderService;
    private var _templateService: TemplateService;
    private var _trustRegistryService: TrustRegistryService;
    private var _walletService: WalletService;
    
    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
    }
    
    public func account() -> AccountService {
        _accountService = _accountService ?? AccountService(self.options)
        return _accountService
    }
    
    public func credential() -> CredentialService {
        _credentialService = _credentialService ?? CredentialService(self.options)
        return _credentialService
    }
    
    public func provider() -> ProviderService {
        _providerService = _providerService ?? ProviderService(self.options)
        return _providerService
    }
    
    public func template() -> TemplateService {
        _templateService = _templateService ?? TemplateService(self.options)
        return _templateService
    }
    
    public func trustRegistry() -> TrustRegistryService {
        _trustRegistryService = _trustRegistryService ?? TrustRegistryService(self.options)
        return _trustRegistryService
    }
    
    public func wallet() -> WalletService {
        _walletService = _walletService ?? WalletService(self.options)
        return _walletService
    }
}
