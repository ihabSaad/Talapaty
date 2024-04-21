//
//  LogerResponseAPI.swift
//  Talabaty
//
//  Created by ihab saad on 15/04/2024.
//

import Foundation


class LogerResponseAPI {
    
    func loger(url: String, stutesCode: Int, headers: headersAPI, error: Error?, response: String, body: Any?) {
        
          print("********* ⚪️⚪️⚪️⚪️⚪️⚪️⚪️⚪️⚪️👉🏼👉🏼👉🏼👉🏼👉🏼 Start API 👈🏼👈🏼👈🏼👈🏼⚪️⚪️⚪️⚪️⚪️⚪️⚪️⚪️⚪️*********")
        if (200 ... 299).contains(stutesCode) {
           print("🟢 StutesCode: 🟢🟢🟢🟢👉🏼\(stutesCode)👈🏼🟢🟢🟢🟢")
           print("🟢 Url: 🟢🟢🟢🟢👉🏼\(url)🟢🟢🟢🟢")
        } else {
            print("🔴 StutesCode:🔴🔴🔴🔴👉🏼\(stutesCode)👈🏼🔴🔴🔴🔴")
            print("🔴 Url:  🔴🔴🔴🔴👉🏼\(url)🔴🔴🔴🔴")
        }
        print("🟡 Headers: 🟡🟡🟡🟡👉🏼\(headers)🟡🟡🟡🟡")
        if let body { print("🟡 body: 🟡🟡🟡🟡👉🏼\(body)👈🏼🟡🟡🟡🟡")}
        print("🟢 Response: 🟢🟢🟢🟢👉🏼\(response)👈🏼🟢🟢🟢🟢")
        print("🔴 Error:  🔴🔴🔴🔴👉🏼\(String(describing: error?.localizedDescription))👈🏼🔴🔴🔴🔴")
        print("⚫️⚫️⚫️⚫️⚫️⚫️⚫️⚫️👉🏼👉🏼👉🏼 END API Call👈🏼👈🏼👈🏼👈🏼👈🏼⚫️⚫️⚫️⚫️⚫️⚫️⚫️⚫️ ")
        
    }
}
