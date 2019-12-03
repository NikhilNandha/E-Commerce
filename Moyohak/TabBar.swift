//
//  TabBarController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 28/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class TabBar : NSObject, UITabBarControllerDelegate {
    
    static let shared = TabBar()
    
    private override init() {}
    
    
    private let tabBarController = HomeTabBarController()
    
    public var controllers : [UIViewController] {
        return tabBarController.viewControllers ?? [UIViewController]()
    }
    
    public func initialize() -> UITabBarController {
        
        tabBarController.viewControllers = viewControllers()
        tabBarController.selectedIndex = 0
        tabBarController.delegate = self
        tabBarController.tabBar.tintColor = UIColor.ThemeColorPrimary
        
        return tabBarController
        
    }
    
    private func viewControllers() -> [UIViewController] {
        
        let homeViewController = NavigatorController().ShopNC
        homeViewController.tabBarItem = UITabBarItem.init(title: "Shop", image: UIImage.init(named: "Shop"), selectedImage: UIImage.init(named: "Shop"))
        
        let qrCodeViewController = NavigatorController().QRCodeNC
        qrCodeViewController.tabBarItem = UITabBarItem.init(title: "QR Code", image: UIImage.init(named: "QrCode"), selectedImage: UIImage.init(named: "QrCode"))
        
        let cartViewController = NavigatorController().CartNC
        cartViewController.tabBarItem = UITabBarItem.init(title: "Cart", image: UIImage.init(named: "Cart"), selectedImage: UIImage.init(named: "Cart"))
        
        let offersViewController = NavigatorController().OffersNC
        offersViewController.tabBarItem = UITabBarItem.init(title: "Offers", image: UIImage.init(named: "Offers"), selectedImage: UIImage.init(named: "Offers"))
        
        let profileViewController = NavigatorController().ProfileNC
        profileViewController.tabBarItem = UITabBarItem.init(title: "Profile", image: UIImage.init(named: "Profile"), selectedImage: UIImage.init(named: "Profile"))
        
        
        return [homeViewController, qrCodeViewController, cartViewController, offersViewController, profileViewController]
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        if tabBarController.selectedIndex == 1 {
//            tabBarController.selectedIndex = 0
//        }
    }
    
}
