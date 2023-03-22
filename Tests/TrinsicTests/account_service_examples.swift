
// BEGIN Doc Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk-swift\Tests\TrinsicTests\account_service_examples.swift

// createAccountService() {
import Trinsic

let accountService = AccountService()
// }

final class AccountExamples {
    func accountSignIn() throws {
        // accountSignIn() {
        var request = Services_Account_V1_SignInRequest()
        request.ecosystemID = "[Your ecosystem ID]"
        request.details.email = "[Your user's email]"
        let response = try accountService.signIn(request: request)
        // }
    }
    
    func getChallenge() -> String {
        return "";
    }
    func accountLoginAndConfirm() throws {
        // accountLogin() {
        var  request = Services_Account_V1_LoginRequest()
        request.ecosystemID = "[Your ecosystem ID]"
        request.email = "[Your user's email]"
        let response = try accountService.login(request: request)
        let challengeString: String = String(data: response.challenge, encoding: .utf8)!
        //Store the challenge string for the loginConfirm call
        
        //Another option rather than logging in is to use the `loginAnonymous` call - in this case you need to manage the storage of auth tokens and manage authenticating your users
        let authToken = try accountService.loginAnonymous(ecosystemId: "[Your ecosystem ID]")
        // }
        // accountLoginConfirm() {
        //Retrieve the challenge string from the login call
        let challenge = getChallenge()
        let confirmResponse = try accountService.loginConfirm(challenge: challenge, authCode: "[Auth code entered by user]")
        // }
    }
    
    func accountInfo() throws {
        // accountInfo() {
        let request = Services_Account_V1_AccountInfoRequest()
        let response = try accountService.info(request: request)
        // }
    }
    
    func accountAuthorizeWebhook() throws {
        // accountAuthorizeWebhook() {
        //TODO check with Scott as we shouldn't be doing this
        let request = Services_Account_V1_AuthorizeWebhookRequest()
        
        let response = try accountService.authorizeWebhook(request: )
        // }
    }
    // END Doc Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
