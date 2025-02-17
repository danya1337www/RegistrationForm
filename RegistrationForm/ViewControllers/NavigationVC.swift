//
//  NavigationVC.swift
//  RegistrationForm
//
//  Created by Danil Chekantsev on 17.02.2025.
//

import UIKit

final class NavigationVC: UIViewController {
    
    var receivedName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    private func updateUI() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = receivedName
    }
}
