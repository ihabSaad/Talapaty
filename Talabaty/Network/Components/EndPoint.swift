//
//  EndPoint.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

import Foundation


typealias parametersAPI = [String: Any]
typealias headersAPI = [String: String]

struct EndPoint {
    
    var path: String
    var methods: HttpMethod
    var parameters: parametersAPI?
    var headers: headersAPI?
    var body: Any?
    
    init(path: String, methods: HttpMethod, parameters: parametersAPI? = nil, headers: headersAPI? = nil, body: Any? = nil) {
       self.path = path
       self.methods = methods
       self.parameters = parameters
       self.headers = headers
       self.body = body
   }

}



