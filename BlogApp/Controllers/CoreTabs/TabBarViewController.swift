//
//  TabBarViewController.swift
//  BlogApp
//
//  Created by Никита Коголенок on 29.03.22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpControllers()
    }
    
    // MARK: - Methods
    private func setUpControllers() {
        let homeVC = HomeViewController()
        homeVC.title = "Home"
        let profileVC = ProfileViewController()
        profileVC.title = "Profile"
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        profileVC.navigationItem.largeTitleDisplayMode = .always
        
        let navigationController1 = UINavigationController(rootViewController: homeVC)
        let navigationController2 = UINavigationController(rootViewController: profileVC)
        
        navigationController1.navigationBar.prefersLargeTitles = true
        navigationController2.navigationBar.prefersLargeTitles = true
        
        navigationController1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navigationController2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        setViewControllers([navigationController1, navigationController2], animated: true)
    }
}
