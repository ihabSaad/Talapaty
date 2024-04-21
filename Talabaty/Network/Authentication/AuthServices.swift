//
//  AuthServices.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import Foundation

protocol AuthServicesProtocol {
    func loign(form: LoginForm, completion: @escaping (ResponseAPI<ResponseLogin>) -> Void)
}
 

class AuthServices: AuthServicesProtocol {
    func loign(form: LoginForm, completion: @escaping (ResponseAPI<ResponseLogin>) -> Void) {
        let endPoint = EndPoint(path: ConstantValues.EndPointPath.login, methods: .post, headers: nil, body: form)
        NetworkManger().requestAPI(type: ResponseLogin.self, endPoint: endPoint, completion: completion)
    }

}
