//
//  RootTabBarViewModel.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

protocol RootTabBarViewModelRepresentable {
    var homeIcons: TabBarIcon { get }
    var chaptersIcons: TabBarIcon { get }
    var bookmarksIcons: TabBarIcon { get }
    var exercisesIcons: TabBarIcon { get }
    var moreIcons: TabBarIcon { get }
}

struct RootTabBarViewModel: RootTabBarViewModelRepresentable {
    
    var homeIcons: TabBarIcon {
        return TabBarItem.home.tabBarIcon
    }
    
    var chaptersIcons: TabBarIcon {
        return TabBarItem.chapters.tabBarIcon
    }
    
    var bookmarksIcons: TabBarIcon {
        return TabBarItem.bookmarks.tabBarIcon
    }
    
    var exercisesIcons: TabBarIcon {
        return TabBarItem.exercises.tabBarIcon
    }
    
    var moreIcons: TabBarIcon {
        return TabBarItem.more.tabBarIcon
    }
}
