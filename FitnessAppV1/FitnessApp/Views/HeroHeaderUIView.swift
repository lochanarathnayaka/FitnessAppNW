//
//  HeroHeaderUIView.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-19.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let createButton: UIButton = {
       let button = UIButton()
        button.setTitle("Create Schedule", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let viewButton: UIButton = {
       let button = UIButton()
        button.setTitle("View Schedule", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "young-fitness")
        return imageView
    }()
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addSubview(viewButton)
        addSubview(createButton)
        addGradient()
        applyConstraints()
    }
    
    private func applyConstraints(){
        
        let viewButtonConstraints = [
            viewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            viewButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            viewButton.widthAnchor.constraint(equalToConstant: 150)
        ]
        
        let createButtonConstraints = [
            createButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            createButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            createButton.widthAnchor.constraint(equalToConstant: 150)
        ]
        
        NSLayoutConstraint.activate(viewButtonConstraints)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }



}
