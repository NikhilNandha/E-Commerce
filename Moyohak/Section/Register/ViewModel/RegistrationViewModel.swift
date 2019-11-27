//
//  RegistrationViewModel.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewModel {
    
    public static func showRegistrationScreen(navigationType: NavigationType, parentViewController: UIViewController) {
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Registration : NavigatorController().RegistrationNC,
                               parentViewController: parentViewController,
                               navigationType: navigationType)
    }
    
}
