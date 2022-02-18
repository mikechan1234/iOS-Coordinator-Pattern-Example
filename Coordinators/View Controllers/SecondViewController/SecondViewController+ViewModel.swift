//
//  SecondViewController+ViewModel.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import Foundation

extension SecondViewController {
    
    class ViewModel {
        
        weak var coordinator: HomeCoordinator?
        
        init(coordinator: HomeCoordinator?) {
            
            self.coordinator = coordinator
            
        }
        
    }
    
}
