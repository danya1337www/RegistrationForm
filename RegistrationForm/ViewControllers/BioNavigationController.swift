//
//  BioNavigationController.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 18.02.2025.
//

import UIKit

class BioNavigationController: UIViewController {
    
    var receivedUser: String?
    
    @IBOutlet var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    private func updateUI() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 0.99, green: 0.94, blue: 0.91, alpha: 1.0).cgColor,
            UIColor(red: 0.91, green: 0.86, blue: 0.97, alpha: 1.0).cgColor
        ]
        gradientLayer.locations = [0.0, 1.0]
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Bio for \(receivedUser ?? "Unknown")"
        
        textLabel.numberOfLines = 0
        textLabel.lineBreakMode = .byWordWrapping
        textLabel.text =
        """
        Hi, my name is Danil Chekantsev. I'm currently studying iOS development, and this project has been a great learning experience for me. Through it, I've learned how to build a functional user interface using UIKit, manage screen transitions with segues, and work with various view controllers like UITabBarController and UINavigationController. I've also gained hands-on experience with implementing gradient backgrounds, handling user input, and passing data between controllers. This project has truly deepened my understanding of app development and has motivated me to keep exploring new challenges.
        """
    }
}
