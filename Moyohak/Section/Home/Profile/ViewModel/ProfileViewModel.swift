//
//  ProfileViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 29/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

enum Profile : String {
    case MyOrders = "My Orders", MyWishlist = "My Wishlist", MyCoupons = "My Coupons", MyReviews = "My Reviews", MyAddresses = "My Addresses"
    case AccSettings = "Account Settings", NotifPref = "Notification Preferences", RateApp = "Rate the App", SendFeedback = "Send Feedback"
    case TermsAndCond = "Terms & Conditions", PrivacyPolicy = "Privacy Policy", ReturnPolicy = "Return Policy", AboutUs = "About Us", FAQs = "FAQ's", Logout = "Logout"
}

class ProfileViewModel {
    
    static let shared = ProfileViewModel()
    
    var dataArray : [[Profile.RawValue]] {
        return [[Profile.MyOrders.rawValue, Profile.MyWishlist.rawValue, Profile.MyCoupons.rawValue, Profile.MyReviews.rawValue, Profile.MyAddresses.rawValue],
                [Profile.AccSettings.rawValue, Profile.NotifPref.rawValue, Profile.RateApp.rawValue, Profile.SendFeedback.rawValue],
                [Profile.TermsAndCond.rawValue, Profile.PrivacyPolicy.rawValue, Profile.ReturnPolicy.rawValue, Profile.AboutUs.rawValue, Profile.FAQs.rawValue, Profile.Logout.rawValue]]
    }
    
    
}


extension ProfileViewModel {
    
    static func showAddressesScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Addresses : NavigatorController().AddressesNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showAddAddressesScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().AddAddresses : NavigatorController().AddAddressesNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showMyOrdersScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().MyOrders : NavigatorController().MyOrdersNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showMyWishlistScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().MyWishlist : NavigatorController().MyWishlistNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
}
