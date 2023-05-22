//
//  SearchViewController.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-08.
//

import UIKit
import Lottie

class ExercisesView: UIViewController {
    
    let animationView = LottieAnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Exercise Screen"
        view.backgroundColor  = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        setupAnimation()
        
    }

    private func setupAnimation() {
        animationView.animation = LottieAnimation.named("gymdumbbell")
        animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        animationView.center = view.center
        animationView.frame = view.bounds
        animationView.backgroundColor = .systemBackground
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }

    
    

}
