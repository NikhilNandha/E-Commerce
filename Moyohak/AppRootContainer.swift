//
//  AppRootContainer.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 28/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class AppRootContainer {
    
    static func tabBarRootContainer(window: UIWindow?) {
        window?.rootViewController = TabBar.shared.initialize()
        
        if let navController = TabBar.shared.controllers[0] as? UINavigationController {
            ViewNavigator.shared.setCurrentViewController(controller: navController.viewControllers[0])
        }else {
            ViewNavigator.shared.setCurrentViewController(controller: TabBar.shared.controllers[0])
        }
    }
    
    static func introRootContainer(window: UIWindow?) {
        
        let introNC = NavigatorController().IntroNC
        window?.rootViewController = introNC
        ViewNavigator.shared.setCurrentViewController(controller: introNC.viewControllers[0])
        
    }
}
