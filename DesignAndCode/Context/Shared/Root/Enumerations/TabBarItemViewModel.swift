//
//  TabBarItemViewModel.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

protocol TabBarItemViewModelRepresentable {
    var tabBarImage: TabBarItem { get }
    var imageNames: (String, String) { get }
}

struct TabBarItemViewModel: TabBarItemViewModelRepresentable {
    var tabBarImage: TabBarItem
    
    var imageNames: (String, String) {
        return getTabBarImageNames()
    }
    
    init(tabBarImage: TabBarItem) {
        self.tabBarImage = tabBarImage
    }
    
    private func getTabBarImageNames() -> (String, String) {
        switch tabBarImage {
        case .home:
            return ("tabbar-home", "tabbar-home-active")
        case .chapters:
            return ("tabbar-chapters", "tabbar-chapters-active")
        case .bookmarks:
            return ("tabbar-bookmarks", "tabbar-bookmarks-active")
        case .exercises:
            return ("tabbar-exercisess", "tabbar-exercises-active")
        case .more:
            return ("tabbar-more", "tabbar-more-active")
        }
    }
}
