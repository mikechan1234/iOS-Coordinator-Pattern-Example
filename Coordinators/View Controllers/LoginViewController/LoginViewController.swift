//
//  LoginViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class LoginViewController: UIViewController {

    weak var coordinator: LoginCoordinator?
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

//MARK: IBAction
extension LoginViewController {

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        coordinator?.loginSucceeded()
        
    }
    
}
