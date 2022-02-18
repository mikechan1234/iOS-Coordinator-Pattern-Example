//
//  LoginViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class LoginViewController: UIViewController {

    let viewModel: ViewModel
    
    @IBOutlet weak var loginButton: UIButton!
    
    init(viewModel: ViewModel) {
        
        self.viewModel = viewModel
        super.init(nibName: String(describing: LoginViewController.self), bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("Must use init(viewModel:)")
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        fatalError("Must use init(viewModel:)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

//MARK: IBAction
extension LoginViewController {

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        viewModel.loginSucceeded()
        
    }
    
}
