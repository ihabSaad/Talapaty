//
//  UserDefaultManger.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import Foundation


class UserDefaultManger {

    
//        MARK: - Proprties
    let shard = UserDefaultManger()
    let userDefault = UserDefaults.standard

    enum KeysID {
        static let idToken = "ID Token"
    }
    
//         SAVE TOKEN
      func setToken(authToken: String) {
           userDefault.setValue(authToken, forKey: KeysID.idToken)
    }
    
//         GET TOKEN
      func getToken(authToken: String) -> String? {
           userDefault.string(forKey: KeysID.idToken)
        }
    
//          REMOVE TOKEN
      func removeToken(authToken: String) {
           userDefault.removeObject(forKey: KeysID.idToken)
        }
        
    
}
