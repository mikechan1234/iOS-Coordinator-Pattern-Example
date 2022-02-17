//
//  HomeCoordinator.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
            
        let viewController = HomeViewController(nibName: String(describing: HomeViewController.self), bundle: nil)
        viewController.coordinator = self
        viewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}

//MARK: Other presentation functions
extension HomeCoordinator {
    
    
    func secondView() {
        
        let viewController = SecondViewController(nibName: String(describing: SecondViewController.self), bundle: nil)
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
