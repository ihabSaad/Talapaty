//
//  AuthRepo.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import Foundation

class AuthRepo {

    
// MARK: - Proprties
    let services: AuthServicesProtocol?
    
    init(services: AuthServicesProtocol? = AuthServices()) {
        self.services = services
    }
    func login(form: LoginForm, completion: @escaping (ResponseAPI<ResponseLogin>) -> Void){
        services?.loign(form: form, completion: completion)
        
    }
}
