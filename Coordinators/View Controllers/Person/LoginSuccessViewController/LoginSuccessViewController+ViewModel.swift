//
//  LoginSuccessViewController+ViewModel.swift
//  Coordinators
//
//  Created by Michael Chan on 18/02/2022.
//

import Foundation

extension LoginSuccessViewController {
    
    class ViewModel {
        
        weak var coordinator: LoginCoordinator?
        
        let descriptionText: String
        
        init(success: Bool, coordinator: LoginCoordinator?) {
            
            descriptionText = success ? "Login Success" : "Login Failed"
            
            self.coordinator = coordinator
            
        }
        
    }
    
}
