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
    }
    
    static func introRootContainer(window: UIWindow?) {
        window?.rootViewController = NavigatorController().IntroNC
    }
}
