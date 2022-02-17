//
//  MainTabBarController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
    let personCoordinator = PersonCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        homeCoordinator.start()
        personCoordinator.start()
        
        viewControllers = [homeCoordinator.navigationController, personCoordinator.navigationController]
        
    }

}
