//
//  CategoriesRepo.swift
//  Talabaty
//
//  Created by ihab saad on 14/04/2024.
//

import Foundation

class CategoriesRepo {
    
//    MARK: - Proprties
   private var services: CategoriesServicesProtocol?
    
    init(services: CategoriesServicesProtocol = CategoriesServices()) {
        self.services = services
    }
    func gitAllCategories(pageNumper: Int, completion: @escaping (ResponseAPI<Page<Categories>>) -> Void) {
        services?.gitAllCategories(pageNumper: pageNumper, completion: completion)
    }
}
