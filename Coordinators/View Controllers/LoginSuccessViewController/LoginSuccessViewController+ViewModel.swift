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
        
        init(coordinator: LoginCoordinator?) {
            
            self.coordinator = coordinator
            
        }
        
    }
    
}
