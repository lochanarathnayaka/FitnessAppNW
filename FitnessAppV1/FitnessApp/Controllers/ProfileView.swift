//
//  DownloadsViewController.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-08.
//

import UIKit

class ProfileView: UIViewController, UITextFieldDelegate {
    
    let heightField = UITextField();
    let weightField = UITextField()
    let fitnessField = UITextField()
    let ageField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "User Profile"
        view.backgroundColor  = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        setupView()
        
        func setupView() {
            view.backgroundColor = .systemBackground
            
            let loginCardContainer = UIScrollView()
            loginCardContainer.showsVerticalScrollIndicator = false
            loginCardContainer.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(loginCardContainer)
            
            let loginCard = UIView()
            loginCard.translatesAutoresizingMaskIntoConstraints = false
            loginCardContainer.addSubview(loginCard)
            
            heightField.translatesAutoresizingMaskIntoConstraints = false
            heightField.placeholder = "Enter Height"
            heightField.backgroundColor = .systemFill
            heightField.borderStyle = .roundedRect
            heightField.returnKeyType = UIReturnKeyType.next
            heightField.autocapitalizationType = UITextAutocapitalizationType.words
            heightField.keyboardType = UIKeyboardType.namePhonePad
            loginCard.addSubview(heightField)
            
            weightField.translatesAutoresizingMaskIntoConstraints = false
            weightField.placeholder = "Enter Weight"
            weightField.backgroundColor = .systemFill
            weightField.borderStyle = .roundedRect
            weightField.returnKeyType = UIReturnKeyType.next
            weightField.autocapitalizationType = UITextAutocapitalizationType.none
            weightField.autocorrectionType = UITextAutocorrectionType.no
            weightField.keyboardType = UIKeyboardType.emailAddress
            loginCard.addSubview(weightField)
            
            
            fitnessField.translatesAutoresizingMaskIntoConstraints = false
            fitnessField.placeholder = "Enter Fitness Goal"
            fitnessField.isSecureTextEntry = true;
            fitnessField.backgroundColor = .systemFill
            fitnessField.borderStyle = .roundedRect
            fitnessField.returnKeyType = UIReturnKeyType.next
            loginCard.addSubview(fitnessField)
            
            ageField.translatesAutoresizingMaskIntoConstraints = false
            ageField.placeholder = "Enter Age"
            ageField.isSecureTextEntry = true;
            ageField.backgroundColor = .systemFill
            ageField.borderStyle = .roundedRect
            ageField.returnKeyType = UIReturnKeyType.done
            loginCard.addSubview(ageField)
            
            let saveButton = UIButton()
            saveButton.setTitle("Save", for: .normal)
            saveButton.backgroundColor = .systemBlue
            saveButton.layer.cornerRadius = 6
            saveButton.frame = CGRect(x: 15, y: -50, width: 300, height: 500)
            saveButton.translatesAutoresizingMaskIntoConstraints = false
            loginCard.addSubview(saveButton)
            
            let signoutButton = UIButton()
            signoutButton.setTitle("Sign Out", for: .normal)
            signoutButton.backgroundColor = .systemBlue
            signoutButton.layer.cornerRadius = 6
            signoutButton.frame = CGRect(x: 15, y: -50, width: 300, height: 500)
            signoutButton.translatesAutoresizingMaskIntoConstraints = false
            loginCard.addSubview(signoutButton)
            
            heightField.delegate = self
            weightField.delegate = self
            fitnessField.delegate = self
            ageField.delegate = self
            heightField.tag = 1
            weightField.tag = 2
            fitnessField.tag = 3
            ageField.tag = 4
            
            NSLayoutConstraint.activate([
                
                loginCardContainer.topAnchor.constraint(equalTo: view.safeTopAnchor),
                loginCardContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                loginCardContainer.leftAnchor.constraint(equalTo: view.safeLeftAnchor),
                loginCardContainer.rightAnchor.constraint(equalTo: view.safeRightAnchor),
                
                loginCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginCard.centerYAnchor.constraint(equalTo: loginCardContainer.centerYAnchor),
                loginCard.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
                loginCard.bottomAnchor.constraint(equalTo: loginCardContainer.bottomAnchor),
                
                
                heightField.heightAnchor.constraint(equalToConstant: 50),
                heightField.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                heightField.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 30),
                heightField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                weightField.heightAnchor.constraint(equalToConstant: 50),
                weightField.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                weightField.topAnchor.constraint(equalTo: heightField.bottomAnchor, constant: 10),
                weightField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                fitnessField.heightAnchor.constraint(equalToConstant: 50),
                fitnessField.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                fitnessField.topAnchor.constraint(equalTo: weightField.bottomAnchor, constant: 10),
                fitnessField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                ageField.heightAnchor.constraint(equalToConstant: 50),
                ageField.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                ageField.topAnchor.constraint(equalTo: fitnessField.bottomAnchor, constant: 10),
                ageField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                saveButton.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                saveButton.heightAnchor.constraint(equalToConstant: 45),
                saveButton.topAnchor.constraint(equalTo: ageField.bottomAnchor, constant: 30),
                saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                signoutButton.widthAnchor.constraint(equalTo: loginCard.widthAnchor),
                signoutButton.heightAnchor.constraint(equalToConstant: 45),
                signoutButton.topAnchor.constraint(equalTo: saveButton.bottomAnchor, constant: 30),
                signoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
            ])
        }

        
    }
}

