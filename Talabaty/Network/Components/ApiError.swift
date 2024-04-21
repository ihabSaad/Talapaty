//
//  ApiError.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

struct ApiError {

    var code: Int
    var message: String
    
    init(code: Int, message: String) {
       self.code = code
       self.message = message
   }
}
