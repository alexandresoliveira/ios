//
//  TabBarController.swift
//  TabsMaterialDesign
//
//  Created by Desenvolvedor on 19/11/17.
//  Copyright © 2017 alexandreoliveira.eti.br. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadTabBarConfig()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension TabBarController {
    fileprivate func loadTabBarConfig() {
        // Background color tab
        tabBar.barTintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        // Item color tab
        tabBar.tintColor = UIColor(red:1.00, green:0.92, blue:0.23, alpha:1.0)
        //Unselected item color tab
        tabBar.unselectedItemTintColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
    }
}

extension TabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
    }
}
