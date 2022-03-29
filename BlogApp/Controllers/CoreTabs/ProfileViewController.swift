//
//  ProfileViewController.swift
//  BlogApp
//
//  Created by Никита Коголенок on 29.03.22.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createRightBarButton()
    }
    
    // MARK: - Method
    private func createRightBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSignOut))
    }
    
    // MARK: - Action
    @objc private func didTapSignOut() {
    }
}
