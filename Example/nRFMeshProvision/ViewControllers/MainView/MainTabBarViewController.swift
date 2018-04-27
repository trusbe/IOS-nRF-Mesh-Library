//
//  MainTabBarViewController.swift
//  nRFMeshProvision_Example
//
//  Created by Mostafa Berg on 06/03/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import nRFMeshProvision

class MainTabBarViewController: UITabBarController {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if let index = tabBar.items?.index(of: item) {
            let targetView = self.viewControllers?[index]
            title = targetView?.title
            navigationItem.leftBarButtonItems = targetView?.navigationItem.leftBarButtonItems
            navigationItem.rightBarButtonItems = targetView?.navigationItem.rightBarButtonItems
        }
    }
}
