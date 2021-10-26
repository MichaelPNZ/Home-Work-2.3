//
//  WelcomeViewController.swift
//  Home Work 2.3
//
//  Created by Михаил Позялов on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextFieldOutlet: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
   
}
