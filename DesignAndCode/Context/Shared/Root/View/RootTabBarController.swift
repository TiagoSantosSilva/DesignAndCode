//
//  RootTabBarController.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    // MARK: - Properties
    
    private var viewModel: RootTabBarViewModelRepresentable!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        setupProperties()
        setupViewControllers()
    }
    
    private func setupProperties() {
        viewModel = RootTabBarViewModel()
    }
    
    private func setupViewControllers() {
        
        let homeViewController = HomeViewController()
        let homeIcon = viewModel.homeIcons
        homeViewController.tabBarItem = UITabBarItem(title: homeIcon.title, image: UIImageWithOriginalRendering(name: homeIcon.disabledName), selectedImage: UIImageWithOriginalRendering(name: homeIcon.enabledName))
        
        let chaptersViewController = ChaptersViewController()
        let chaptersIcon = viewModel.chaptersIcons
        chaptersViewController.tabBarItem = UITabBarItem(title: chaptersIcon.title, image: UIImageWithOriginalRendering(name: chaptersIcon.disabledName), selectedImage: UIImageWithOriginalRendering(name: chaptersIcon.enabledName))
        
        let bookmarksViewController = BookmarksViewController()
        let bookmarksIcon = viewModel.bookmarksIcons
        bookmarksViewController.tabBarItem = UITabBarItem(title: bookmarksIcon.title, image: UIImageWithOriginalRendering(name: bookmarksIcon.disabledName), selectedImage: UIImageWithOriginalRendering(name: bookmarksIcon.enabledName))
        
        let exercisesViewController = ExercisesViewController()
        let exercisesIcon = viewModel.exercisesIcons
        exercisesViewController.tabBarItem = UITabBarItem(title: exercisesIcon.title, image: UIImageWithOriginalRendering(name: exercisesIcon.disabledName), selectedImage: UIImageWithOriginalRendering(name: exercisesIcon.enabledName))
        
        let moreViewController = MoreViewController()
        let moreIcon = viewModel.moreIcons
        moreViewController.tabBarItem = UITabBarItem(title: moreIcon.title, image: UIImageWithOriginalRendering(name: moreIcon.disabledName), selectedImage: UIImageWithOriginalRendering(name: moreIcon.enabledName))
        
        let viewControllerList = [homeViewController, chaptersViewController, bookmarksViewController, exercisesViewController, moreViewController]
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
