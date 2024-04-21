//
//  ResponseAPI.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

import Foundation


enum ResponseAPI<T: Codable>{
    case onSucsess(T)
    case onMistake(ApiError)
}
