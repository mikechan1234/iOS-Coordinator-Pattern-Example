//
//  HomeViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class HomeViewController: UIViewController {

    weak var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

//MARK: IBAction
extension HomeViewController {
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        
        coordinator?.secondView()
        
    }
    
}
