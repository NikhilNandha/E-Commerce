//
//  ProductViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 04/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class ProductViewModel {
    
    static func showProductsList(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().ProductList : NavigatorController().ProductListNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showProductDetails(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().ProductDetails : NavigatorController().ProductDetailsNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showProductDescription(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().ProductDescription : NavigatorController().ProductDescriptionNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showRateProductScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().RateProduct : NavigatorController().RateProductNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showFilterScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Filter : NavigatorController().FilterNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
}
