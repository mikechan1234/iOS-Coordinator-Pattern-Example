//
//  PersonViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class PersonViewController: UIViewController {

    let viewModel: ViewModel
    
    @IBOutlet weak var loginViewButton: UIButton!
    
    init(viewModel: ViewModel) {
        
        self.viewModel = viewModel
        super.init(nibName: String(describing: PersonViewController.self), bundle: nil)
        
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
extension PersonViewController {

    @IBAction func loginViewButtonTapped(_ sender: UIButton) {
        
        viewModel.login()
        
    }
    
}
