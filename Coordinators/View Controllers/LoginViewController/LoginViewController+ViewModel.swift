//
//  LoginViewController+ViewModel.swift
//  Coordinators
//
//  Created by Michael Chan on 18/02/2022.
//

import Foundation

extension LoginViewController {
    
    class ViewModel {
        
        weak var coordinator: LoginCoordinator?
        
        init(coordinator: LoginCoordinator?) {
            
            self.coordinator = coordinator
            
        }
        
    }
    
}

//MARK: Coordinator code
extension LoginViewController.ViewModel {
    
    func loginSucceeded() {
        
        coordinator?.loginResult(success: Bool.random())
        
    }
    
}
