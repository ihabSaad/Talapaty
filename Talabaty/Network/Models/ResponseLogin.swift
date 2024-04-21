//
//  ResponseLogin.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import Foundation


struct ResponseLogin: Codable {
    var authToken: String?
    
    enum CodingKeys: String, CodingKey{
        case authToken  = "x-auth-token"
    }
}
