//
//  AppDelegate.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 22/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        sleep(2)
        window = UIWindow.init(frame: UIScreen.main.bounds)
        AppRootContainer.setIntroScreen(window: window)
        window?.makeKeyAndVisible()
        
        return true
    }


}

