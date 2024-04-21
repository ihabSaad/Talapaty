//
//  LoginViewModel.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import Foundation
import RxSwift


enum StateLogin {
    case showLoding
    case hideLogin
    case sucsess
    case completed
    case error(error: String)
}

class LoginViewModel {
    
  
//    MARK: - Proprties
     let repoLogin: AuthRepo
     let screenState = PublishSubject<StateLogin>()
    
     init(repoLogin: AuthRepo = AuthRepo()) {
        self.repoLogin = repoLogin
}
     func login(email: String, Password: String) {
         screenState.on(.next(.showLoding))
         let model = LoginForm(email: email, password: Password)
         repoLogin.login(form: model) { response in
                    self.screenState.on(.next(.hideLogin))
             switch response {
             case let.onSucsess(data):
                 if let authToken = data.authToken {
                     UserDefaultManger().shard.setToken(authToken: authToken)
                 }
                    self.screenState.on(.next(.sucsess))
                    self.screenState.on(.next(.completed))
             case let.onMistake(Error):
                    self.screenState.on(.next(.error(error: Error.message)))
                    self.screenState.on(.next(.completed))
             }
         }
    }
}


