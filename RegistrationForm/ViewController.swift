//
//  ViewController.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 13.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        loginTextField.placeholder = "User Name"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        loginButton.setTitle("Log In", for: .normal)
        forgotUserNameButton.setTitle("Forgot User Name?", for: .normal)
        forgotUserNameButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
    }

}

