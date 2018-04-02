//
//  TabBarItemViewModel.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

protocol TabBarItemViewModelRepresentable {
    var tabBarItem: TabBarItem { get }
    var tabBarIcon: TabBarIcon { get }
}

struct TabBarItemViewModel: TabBarItemViewModelRepresentable {
    
    // MARK: - Properties
    
    var tabBarItem: TabBarItem
    
    var tabBarIcon: TabBarIcon {
        return getTabBarIcon()
    }
    
    // MARK: - Initalization
    
    init(tabBarItem: TabBarItem) {
        self.tabBarItem = tabBarItem
    }
    
    // MARK: - Accessibility
    
    private func getTabBarIcon() -> TabBarIcon {
        switch tabBarItem {
        case .home:
            return TabBarIcon(title: "Home", enabledName: "tabbar-home-active", disabledName: "tabbar-home")
        case .chapters:
            return TabBarIcon(title: "Chapters", enabledName: "tabbar-chapters-active", disabledName: "tabbar-chapters")
        case .bookmarks:
            return TabBarIcon(title: "Bookmarks", enabledName: "tabbar-bookmarks-active", disabledName: "tabbar-bookmarks")
        case .exercises:
            return TabBarIcon(title: "Exercises", enabledName: "tabbar-exercises-active", disabledName: "tabbar-exercises")
        case .more:
            return TabBarIcon(title: "More", enabledName: "tabbar-more-active", disabledName: "tabbar-more")
        }
    }
}
