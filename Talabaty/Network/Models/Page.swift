//
//  Page.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

import Foundation

struct Page<T: Codable>: Codable {
    var currentPage: Int
    var pageSize: Int
    var totalSize: Int
    var data: [T]
}
