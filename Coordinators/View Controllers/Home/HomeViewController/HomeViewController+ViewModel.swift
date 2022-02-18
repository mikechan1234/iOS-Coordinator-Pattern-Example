//
//  HomeViewController+ViewModel.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import Foundation

extension HomeViewController {
    
    class ViewModel {
        
        weak var coordinator: HomeCoordinator?
        
        init(coordinator: HomeCoordinator?) {
            
            self.coordinator = coordinator
            
        }
        
    }
    
}

//MARK: Coordinator code
extension HomeViewController.ViewModel {
    
    func second() {
        
        coordinator?.secondView()
        
    }
    
}
