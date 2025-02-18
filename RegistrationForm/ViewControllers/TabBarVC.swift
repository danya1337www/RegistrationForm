//
//  SecondViewController.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 13.02.2025.
//

import UIKit

final class TabBarVC: UIViewController {
    
    var receivedLoginText: String?
    
    // MARK: - IB Outlets

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        navigationItem.title = receivedLoginText
    }
        
    // MARK: - IB Action
    
    @IBAction func logOut() {
        dismiss(animated: true)
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
        
        welcomeLabel.text = "Welcome, \(receivedLoginText ?? "User")!"
        welcomeLabel.font = .systemFont(ofSize: 40, weight: .bold)
        logOutButton.setTitle("Log Out", for: .normal)
        logOutButton.setTitleColor(.black, for: .normal)
        logOutButton.role = .destructive
        welcomeLabel.textColor = .black

    }
}
