//
//  NavigationVC.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 17.02.2025.
//

import UIKit

final class NavigationVC: UIViewController {
    
    var receivedName: String?
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var townLabel: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var town: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "navBio",
              let navController = segue.destination as? UINavigationController else { return }
        
        if let bioVC = navController.viewControllers.first as? BioNavigationController {
            bioVC.receivedUser = receivedName
        }
        
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
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = receivedName

        nameLabel.text = "Name: "
        surnameLabel.text = "Surname: "
        emailLabel.text = "Email: "
        phoneLabel.text = "Phone: "
        townLabel.text = "Town: "
        
        name.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        name.text = "\(receivedName ?? "User")"
        
        surname.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        surname.text = "Chekantsev"
        
        email.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        email.text = "chekantsev.danil2@gmail.com"
        
        phone.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        phone.text = "+7 (929) 499 1337"
        
        town.font = UIFont.systemFont(ofSize: 17, weight: .thin)
        town.text = "Vladivostok"
    }
}
