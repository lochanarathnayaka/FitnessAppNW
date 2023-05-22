//
//  ViewController.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-08.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeView())
        let vc2 = UINavigationController(rootViewController: FitnessView())
        let vc3 = UINavigationController(rootViewController: ExerciseView())
        let vc4 = UINavigationController(rootViewController: ProfileView())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "figure.run")
        vc3.tabBarItem.image = UIImage(systemName: "list.bullet.clipboard")
        vc4.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        
        vc1.title = "Home"
        vc2.title = "BMI & Fitness"
        vc3.title = "Exercise Library"
        vc4.title = "Profile"
        
        tabBar.tintColor = .label

        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}

