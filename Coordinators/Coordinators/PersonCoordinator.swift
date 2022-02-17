//
//  PersonCoordinator.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class PersonCoordinator: NSObject, Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
            
        let viewController = PersonViewController(nibName: String(describing: PersonViewController.self), bundle: nil)
        viewController.coordinator = self
        viewController.tabBarItem = UITabBarItem(title: "Person", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func childCoordinatorDidFinish(_ coordinator: Coordinator?) {
        
        for (index, childCoordinator) in childCoordinators.enumerated() {
            
            if childCoordinator === coordinator {
                
                childCoordinators.remove(at: index)
                break
                
            }
            
        }
        
    }
    
    func login() {
        
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        
        childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
        
    }
    
}

//MARK: UINavigationControllerDelegate
extension PersonCoordinator: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from), !navigationController.viewControllers.contains(fromViewController) else {
            
            return
            
        }
        
        if let loginViewController = fromViewController as? LoginViewController {
            
            childCoordinatorDidFinish(loginViewController.coordinator)
            
        }
        
    }
    
}
