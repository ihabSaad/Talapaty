//
//  SplashScreenVC.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

import UIKit

class SplashScreenVC: UIViewController {
    
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        let repoCategories = CategoriesRepo()
        repoCategories.gitAllCategories(pageNumper: 1) { response in
            switch response {
            case let.onSucsess(Data):
                 print("")
            case let.onMistake(Error):
                print("")
            }
        }
    }
}


