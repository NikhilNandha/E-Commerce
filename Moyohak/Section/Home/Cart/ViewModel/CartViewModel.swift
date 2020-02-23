//
//  CartViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 29/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

enum Payment: String {
    case Card = "Credit / Debit / ATM Card"
    case NetBanking = "Net Banking"
    case COD = "Cash on Delivery"
}

class CartViewModel {
    
    static let shared = CartViewModel()
    
    var tableArray : [Payment.RawValue] {
        return [Payment.Card.rawValue, Payment.NetBanking.rawValue, Payment.COD.rawValue]
    }
    
    static func showCartScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Cart : NavigatorController().CartNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showCheckoutScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Checkout : NavigatorController().CheckoutNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showPaymentScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Payment : NavigatorController().PaymentNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    
}
