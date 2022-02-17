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
     
        let viewController = LoginViewController(nibName: String(describing: LoginViewController.self), bundle: nil)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}

extension LoginCoordinator {
    
    func loginSucceeded() {
        
        let viewController = LoginViewController(nibName: String(describing: LoginSuccessViewController.self), bundle: nil)
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
