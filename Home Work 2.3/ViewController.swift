//
//  ViewController.swift
//  Home Work 2.3
//
//  Created by Михаил Позялов on 25.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userNameTextField.delegate = self
    }

    @IBAction func logInButtonPressed() {
        let alertControllerLogIn = UIAlertController(title: "Invalid login or password", message: "Please, error correct login and password", preferredStyle: .alert)
        
        alertControllerLogIn.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        self.present(alertControllerLogIn, animated: true, completion: nil)
        
    }
    
    @IBAction func forgotUserNameButton() {
        let alertControllerUserName = UIAlertController(title: "Oops!", message: "Your name is User", preferredStyle: .alert)
        
        alertControllerUserName.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        
        self.present(alertControllerUserName, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButton() {
        let alertControllerPassword = UIAlertController(title: "Oops!", message: "Your password is Password", preferredStyle: .alert)
        
        alertControllerPassword.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        self.present(alertControllerPassword, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
    }
}

