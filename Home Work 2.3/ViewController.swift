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
        guard let userName = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if userName == "User" && password == "Password" {
            performSegue(withIdentifier: "toWelcomScreen", sender: UIButton.self)
        } else {
        let alertControllerLogIn = UIAlertController(title: "Invalid login or password",
                                                     message: "Please, error correct login and password",
                                                     preferredStyle: .alert)
        
        alertControllerLogIn.addAction(UIAlertAction.init(title: "OK",
                                                          style: .default,
                                                          handler: nil))
            
       present(alertControllerLogIn, animated: true, completion: nil)
            passwordTextField.text = nil
        }
    }
    
    @IBAction func forgotUserNameButton() {
        let alertControllerUserName = UIAlertController(title: "Oops!",
                                                        message: "Your name is User😀",
                                                        preferredStyle: .alert)
        
        alertControllerUserName.addAction(UIAlertAction.init(title: "OK",
                                                             style: .default,
                                                             handler: nil))
        
        present(alertControllerUserName, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButton() {
        let alertControllerPassword = UIAlertController(title: "Oops!",
                                                        message: "Your password is Password",
                                                        preferredStyle: .alert)
        
        alertControllerPassword.addAction(UIAlertAction.init(title: "OK",
                                                             style: .default,
                                                             handler: nil))
        
       present(alertControllerPassword, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
//    private func tagBasedTextField(_ textField: UITextField) {
//             let nextTextFieldTag = textField.tag + 1
//
//             if let nextTextField = textField.superview?.viewWithTag(nextTextFieldTag) as? UITextField {
//                 nextTextField.becomeFirstResponder()
//             } else {
//                 textField.resignFirstResponder()
//             }
//
//         }
//
////         func textFieldShouldReturn(_ textField: UITextField) -> Bool {
////             self.tagBasedTextField(textField)
////             if textField.tag == 1 {
////                 loginButtonPressed(self)
////             }
////             return true
////         }
}

