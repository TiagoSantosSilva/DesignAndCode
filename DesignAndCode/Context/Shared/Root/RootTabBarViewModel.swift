//
//  RootTabBarViewModel.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

protocol RootTabBarViewModelRepresentable {
    var homeIcons: (String, String) { get }
    var chaptersIcons: (String, String) { get }
    var bookmarksIcons: (String, String) { get }
    var exercisesIcons: (String, String) { get }
    var moreIcons: (String, String) { get }
}

struct RootTabBarViewModel: RootTabBarViewModelRepresentable {
    
    var homeIcons: (String, String) {
        return TabBarItem.home.imageNames
    }
    
    var chaptersIcons: (String, String) {
        return TabBarItem.chapters.imageNames
    }
    
    var bookmarksIcons: (String, String) {
        return TabBarItem.bookmarks.imageNames
    }
    
    var exercisesIcons: (String, String) {
        return TabBarItem.exercises.imageNames
    }
    
    var moreIcons: (String, String) {
        return TabBarItem.more.imageNames
    }
}
