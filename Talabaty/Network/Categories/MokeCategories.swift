//
//  MokeCategories.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

class MokeCategories: CategoriesServicesProtocol {
    func gitAllCategories(pageNumper: Int, completion: @escaping (ResponseAPI<Page<Categories>>) -> Void) {
        completion(.onMistake(ApiError(code: 404, message: "Error, No Data")))
    }
}
