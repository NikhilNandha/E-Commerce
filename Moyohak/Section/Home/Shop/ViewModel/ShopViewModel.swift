//
//  ShopViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 28/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class ShopViewModel {
    
    static func showCategories(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Categories : NavigatorController().CategoriesNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
    
    static func showSubCategories(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().SubCategories : NavigatorController().SubCategoriesNC,
                                      parentViewController: parentViewController,
                                      navigationType: navigationType)
    }
}
