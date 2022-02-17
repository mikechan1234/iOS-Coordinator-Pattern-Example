//
//  FirstViewController.swift
//  Coordinators
//
//  Created by Michael Chan on 17/02/2022.
//

import UIKit

class FirstViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK: IBAction
extension FirstViewController {
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        
        coordinator?.secondView()
        
    }
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {
        
        coordinator?.thirdView()
        
    }
    
}