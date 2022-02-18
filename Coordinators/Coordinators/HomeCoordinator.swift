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
        
        let viewModel = HomeViewController.ViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        
        viewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}

//MARK: Other presentation functions
extension HomeCoordinator {
    
    func secondView() {
        
        let viewModel = SecondViewController.ViewModel(coordinator: self)
        let viewController = SecondViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
