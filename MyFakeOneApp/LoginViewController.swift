//
//  LoginViewController.swift
//  MyFakeOneApp
//
//  Created by Mykola Odnosumov on 24.02.2020.
//  Copyright © 2020 Mykola Odnosumov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private var firstNameInput: UITextField?
    private var lastNameInput: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login As", for: .normal)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.firstNameInput = UITextField()
        self.firstNameInput!.placeholder = "Enter first name..."
        self.firstNameInput!.translatesAutoresizingMaskIntoConstraints = false
        
        self.lastNameInput = UITextField()
        self.lastNameInput!.placeholder = "Enter last name..."
        self.lastNameInput!.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loginButton)
        view.addSubview(self.firstNameInput!)
        view.addSubview(self.lastNameInput!)
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        self.firstNameInput!.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.firstNameInput!.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30).isActive = true
        
        self.lastNameInput!.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.lastNameInput!.topAnchor.constraint(equalTo: self.firstNameInput!.bottomAnchor, constant: 20).isActive = true
        
        self.testFunction()
    }
    
    deinit {
        print("deinit called for login view controller")
    }
    
    func testFunction() {
        print("test function called")
    }

    @objc
    func login() {
        let profileViewController = ProfileViewController()
        profileViewController.firstName = self.firstNameInput!.text
        profileViewController.lastName = self.lastNameInput!.text
        
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
    
}
