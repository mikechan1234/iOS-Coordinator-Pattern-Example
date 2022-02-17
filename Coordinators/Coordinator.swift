//
//  Coordinator.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
    
}
