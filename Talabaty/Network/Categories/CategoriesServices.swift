//
//  CategoriesServices.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

protocol CategoriesServicesProtocol {
    func gitAllCategories(pageNumper: Int, completion: @escaping (ResponseAPI<Page<Categories>>) -> Void)
}

class CategoriesServices: CategoriesServicesProtocol {
    func gitAllCategories(pageNumper: Int, completion: @escaping (ResponseAPI<Page<Categories>>) -> Void) {
        let endPoint = EndPoint(path: ConstantValues.EndPointPath.categories, methods: .get,
                                parameters: [ConstantValues.EndPointKeys.pageNumper: pageNumper,
                                             ConstantValues.EndPointKeys.pageSize: ConstantValues.API.pageSize],
                                headers: nil, body: nil)
        NetworkManger().requestAPI(type: Page<Categories>.self, endPoint: endPoint, completion: completion)
    }
}
