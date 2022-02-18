//
//  LoginCoordinator.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class LoginCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
     
        let viewModel = LoginViewController.ViewModel(coordinator: self)
        let viewController = LoginViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}

extension LoginCoordinator {
    
    func loginResult(success: Bool) {
        
        let viewModel = LoginSuccessViewController.ViewModel(success: success, coordinator: self)
        let viewController = LoginSuccessViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
