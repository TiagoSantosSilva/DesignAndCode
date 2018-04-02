//
//  RootTabBarController.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    private var viewModel: RootTabBarViewModelRepresentable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        setupProperties()
        setupViewControllers()
    }
    
    private func setupProperties() {
        viewModel = RootTabBarViewModel()
    }
    
    private func setupViewControllers() {
        
        let viewControllerList = [UIViewController]()
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
