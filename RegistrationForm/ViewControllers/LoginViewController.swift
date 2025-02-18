//
//  ViewController.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 13.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlet
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "loginSegue",
              let tabBarVC = segue.destination as? UITabBarController else { return }
        
        if let secondVC = tabBarVC.viewControllers?[0] as? TabBarVC {
            secondVC.receivedLoginText = loginTextField.text
        }
        
        if let navVC = tabBarVC.viewControllers?[1] as? UINavigationController,
           let NavigationVC = navVC.viewControllers.first as? NavigationVC {
            NavigationVC.receivedName = loginTextField.text
        }
    }

    // MARK: - IB Actions
    
    @IBAction func loginButtonTapped() {
        guard let username = loginTextField.text, !username.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(title: "Login error", message: "Please fill in all fields")
            return
        }
        
        let correctUserName = "Danil"
        let correctPassword = "1337"
        
        if username == correctUserName && password == correctPassword {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            showAlert(
                title: "Incorrect data",
                message: "Invalid username or password"
            )
        }
        
    }
    
    @IBAction func forgotUserButtonTapped() {
        showAlert(
            title: "Remind UserName",
            message: "UserName is: Danil"
        )
    }
        
        @IBAction func forgotPasswordButtonTapped() {
            showAlert(
                title: "Remind Password",
                message: "Password is: 1337"
            )
        }
        
        // MARK: - Private Methods
        
        private func updateUI() {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
            gradientLayer.colors = [
                UIColor(red: 0.99, green: 0.94, blue: 0.91, alpha: 1.0).cgColor,
                UIColor(red: 0.91, green: 0.86, blue: 0.97, alpha: 1.0).cgColor
            ]
            gradientLayer.locations = [0.0, 1.0]
            
            view.layer.insertSublayer(gradientLayer, at: 0)
            
            loginTextField.text = "Danil"
            loginTextField.clearButtonMode = .whileEditing
            
            passwordTextField.text = "1337"
            passwordTextField.clearButtonMode = .whileEditing
            passwordTextField.isSecureTextEntry = true
            
            loginButton.setTitle("Log In", for: .normal)
            
            forgotUserNameButton.setTitle("Forgot User Name?", for: .normal)
            forgotUserNameButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            
            forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
            forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            
        }
    
        private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(
            UIAlertAction(
                title: "Ok",
                style: .default,
                handler: nil
            )
        )
        present(alert, animated: true, completion: nil)
    }
}
