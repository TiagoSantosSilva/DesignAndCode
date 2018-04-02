//
//  RootTabBarController.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let firstViewController = FirstViewController()
        let firstImage = UIImage(named: "first")
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: firstImage, tag: 0)
        
        let secondViewController = SecondViewController()
        let secondImage = UIImage(named: "second")
        secondViewController.tabBarItem = UITabBarItem(title: "Second", image: secondImage, tag: 1)
        
        let viewControllerList = [firstViewController, secondViewController]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
