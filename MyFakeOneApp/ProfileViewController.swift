//
//  ProfileViewController.swift
//  MyFakeOneApp
//
//  Created by Mykola Odnosumov on 24.02.2020.
//  Copyright © 2020 Mykola Odnosumov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    public var firstName: String?
    public var lastName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let userImage = UIImage(systemName: "person")
        let userImageView = UIImageView(image: userImage)
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userImageView)

        userImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        userImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        userImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        userImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true

        let firstNameLabel = UILabel()
        firstNameLabel.text = self.firstName!
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstNameLabel)

        firstNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        firstNameLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 30).isActive = true

        let lastNameLabel = UILabel()
        lastNameLabel.text = self.lastName!
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lastNameLabel)

        lastNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        lastNameLabel.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 20).isActive = true

        let buttonsView = UIStackView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.axis = .horizontal
        buttonsView.distribution = .equalSpacing
        buttonsView.alignment = .center
        buttonsView.spacing = 30
        view.addSubview(buttonsView)
        
        buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        
        let editButton = UIButton(type: .system)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.setTitle("Edit", for: .normal)
        editButton.accessibilityIdentifier = "MyTestLabel"
        editButton.accessibilityLabel = "Tap to press edit"
        editButton.setTitleColor(.red, for: .normal)
        buttonsView.addArrangedSubview(editButton)
        
        let saveButton = UIButton(type: .system)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.green, for: .normal)
        saveButton.addTarget(self, action: #selector(returnToCaller), for: .touchUpInside)
        buttonsView.addArrangedSubview(saveButton)
    }
    
    deinit {
        print("deinit called for profile view controller")
    }
    
    @objc
    func returnToCaller() {
        self.navigationController?.popViewController(animated: true)
    }
    

}
