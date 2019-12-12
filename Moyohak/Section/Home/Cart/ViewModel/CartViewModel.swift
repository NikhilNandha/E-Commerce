//
//  CartViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 29/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class CartViewModel {
    
    static let shred = CartViewModel()
    
    static func showCheckoutScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Checkout : NavigatorController().CheckoutNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    
}
