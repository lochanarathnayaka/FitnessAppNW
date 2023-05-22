//
//  UpcommingViewController.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-08.
//

import UIKit

class FitnessView: UIViewController {
    
    // Declare UI elements
    let weightField = UITextField()
    let heightField = UITextField()
    let calculateButton = UIButton(type: .system)
    let resultLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fitness Screen"
        view.backgroundColor  = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        weightField.frame = CGRect(x: 50, y: 300, width: 300, height: 30)
        weightField.borderStyle = .roundedRect
        weightField.textAlignment = .center
        weightField.placeholder = "Enter weight (kg)"
        view.addSubview(weightField)
        NSLayoutConstraint.activate([
            weightField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            weightField.widthAnchor.constraint(equalToConstant: 200),
            weightField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        heightField.frame = CGRect(x: 50, y: 350, width: 300, height: 30)
        heightField.borderStyle = .roundedRect
        heightField.textAlignment = .center
        heightField.placeholder = "Enter height (m)"
        view.addSubview(heightField)
        NSLayoutConstraint.activate([
            heightField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            heightField.widthAnchor.constraint(equalToConstant: 200),
            heightField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        calculateButton.frame = CGRect(x: 50, y: 400, width: 300, height: 30)
        calculateButton.setTitle("Calculate BMI", for: .normal)
        calculateButton.configuration = .filled()
        calculateButton.configuration?.baseBackgroundColor = .systemBlue
        calculateButton.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calculateButton)
        NSLayoutConstraint.activate([
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            calculateButton.widthAnchor.constraint(equalToConstant: 200),
            calculateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        resultLabel.frame = CGRect(x: 50, y: 550, width: 300, height: 30)
        resultLabel.textAlignment = .center
        view.addSubview(resultLabel)
        NSLayoutConstraint.activate([
            resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            resultLabel.widthAnchor.constraint(equalToConstant: 200),
            resultLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func calculateButtonTapped() {
        // Get the values from the text fields
        guard let weightText = weightField.text, let heightText = heightField.text else {
            return
        }
        
        // Convert the values to floats
        guard let weight = Float(weightText), let height = Float(heightText) else {
            return
        }
        
        // Calculate BMI
        let bmi = weight / (height * height)
        
        // Update the result label
        resultLabel.text = "BMI: \(bmi)"
    }
}

            
            
