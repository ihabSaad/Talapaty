//
//  ConstantValues.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

//http://talabaty-1c6983cf0e45.herokuapp.com/api/auth/users/login
import Foundation

struct ConstantValues {
    enum API {
        static let baseUrl = "http://talabaty-1c6983cf0e45.herokuapp.com/api/"
        static let timeoutInterval = 50.0
        static let pageSize = 30
    }
    enum EndPointPath {
        static let categories =  "components/categories"
        static let login = "auth/users/login"
    }
    enum EndPointKeys {
        static let pageSize = "pageSize"
        static let pageNumper = "pageNumper"
    }
}




