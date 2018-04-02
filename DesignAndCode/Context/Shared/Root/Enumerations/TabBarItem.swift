//
//  TabBarItem.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

enum TabBarItem {
    case home
    case chapters
    case bookmarks
    case exercises
    case more
}

extension TabBarItem {
    var tabBarIcon: TabBarIcon {
        let tabBarImageViewModel: TabBarItemViewModelRepresentable
        tabBarImageViewModel = TabBarItemViewModel(tabBarItem: self)
        return tabBarImageViewModel.tabBarIcon
    }
}
