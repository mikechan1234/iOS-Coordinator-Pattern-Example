//
//  HomeViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class HomeViewController: UIViewController {

    let viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        
        self.viewModel = viewModel
        super.init(nibName: String(describing: HomeViewController.self), bundle: nil)
        
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
extension HomeViewController {
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        
        viewModel.second()
        
    }
    
}
