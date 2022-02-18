//
//  PersonViewController+ViewModel.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import Foundation

extension PersonViewController {
    
    class ViewModel {
        
        weak var coordinator: PersonCoordinator?
        
        init(coordinator: PersonCoordinator?) {
            
            self.coordinator = coordinator
            
        }
        
    }
    
}

//MARK: Coordinator code
extension PersonViewController.ViewModel {
    
    func login() {
        
        coordinator?.login()
        
    }
    
}
