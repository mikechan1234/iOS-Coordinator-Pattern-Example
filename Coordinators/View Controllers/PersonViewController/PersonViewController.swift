//
//  PersonViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class PersonViewController: UIViewController {

    weak var coordinator: PersonCoordinator?
    
    @IBOutlet weak var loginViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

//MARK: IBAction
extension PersonViewController {

    @IBAction func loginViewButtonTapped(_ sender: UIButton) {
        
        coordinator?.login()
        
    }
    
}
