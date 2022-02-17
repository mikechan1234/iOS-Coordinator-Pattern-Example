//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
            
        let viewController = FirstViewController(nibName: String(describing: FirstViewController.self), bundle: nil)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}

//MARK: Other presentation functions
extension MainCoordinator {
    
    func secondView() {
        
        let viewController = SecondViewController(nibName: String(describing: SecondViewController.self), bundle: nil)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func thirdView() {
        
        let viewController = ThirdViewController(nibName: String(describing: ThirdViewController.self), bundle: nil)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
