//
//  ViewController.swift
//  DelegationApp
//
//  Created by Alexander Shevtsov on 01.09.2024.
//

import UIKit

protocol ProfileViewControllerDelegate: AnyObject {
    func setGreeting(for user: User)
}

final class GreetingViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationVC = segue.destination as? UINavigationController
        let profileVC = navigationVC?.topViewController as? ProfileViewController
        profileVC?.delegate = self
    }
}

extension GreetingViewController: ProfileViewControllerDelegate {
    func setGreeting(for user: User) {
        welcomeLabel.text = "Welcome, \(user.fullName)"
    }
}

