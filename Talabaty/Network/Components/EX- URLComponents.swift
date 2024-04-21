//
//  EX- URLComponents.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

extension URLComponents {
    
    init( endPoint: EndPoint) {
         let baseUrlString = ConstantValues.API.baseUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
         let url = URL(string: baseUrlString)
         let fullUrl = url!.appendingPathComponent(endPoint.path)
         self.init(url: fullUrl, resolvingAgainstBaseURL: true)!
        
   guard let parameters = endPoint.parameters else { return }
        
      queryItems = parameters.map({ key, Value in
          return URLQueryItem(name: key, value: String(describing: Value))
              
        })
    }
}
