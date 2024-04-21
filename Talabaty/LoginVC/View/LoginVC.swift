//
//  LoginVC.swift
//  Talabaty
//
//  Created by ihab saad on 16/04/2024.
//

import UIKit
import RxSwift

class LoginVC: UIViewController {
    
 
    
//    MARK: - OutLest
    @IBOutlet weak var emailTextFields: UITextField!
    @IBOutlet weak var passwordTextFields: UITextField!
//    MARK: - proprties
    var viewModel: LoginViewModel
    var disposed = DisposeBag()
    
    init() {
        self.viewModel = LoginViewModel()
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sffs() 

    }
    
    func sffs () {
        viewModel.screenState.subscribe(onNext: { elemnt in
            switch elemnt {
                
            case .showLoding:
                print("showLoding")
            case .hideLogin:
                print("hideLogin")
            case .sucsess:
                print("sucsess")
            case .completed:
                print("completed")
            case .error(error: let error):
                print("error\(error)")
            }
        }).disposed(by: disposed)
    }
    
    @IBAction func actionLogin(_ sender: Any) {
        print("rwrwwrrwwr")
        let email = emailTextFields.text ?? ""
        let password = passwordTextFields.text ?? ""
        viewModel.login(email: email, Password: password)
    }
    @IBAction func actionForgotPassword(_ sender: Any) {
    }
}
