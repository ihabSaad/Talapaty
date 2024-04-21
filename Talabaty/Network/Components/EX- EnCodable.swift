//
//  EX- EnCodable.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

extension Encodable {
    
    func asDictionary() -> [String:Any]? {
        
      do {
            let data = try JSONEncoder().encode(self)
      guard let dic = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any] else {
                return nil
            }
                 return dic
    } catch {
               return nil
        }
    }
}


