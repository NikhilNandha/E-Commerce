//
//  LoginViewModel.swift
//  MoyohakPartner
//
//  Created by Nikhil Nandha on 10/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

class LoginViewModel {
    
    public static func showLoginScreen(navigationType: NavigationType, parentViewController: UIViewController){
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().Login : NavigatorController().LoginNC,
                               parentViewController: parentViewController,
                               navigationType: navigationType)
    }
        
    public static func showForgotPasswordScreen(navigationType: NavigationType, parentViewController: UIViewController){
        
        ViewNavigator.shared.navigate(viewController: navigationType == .Push ? NavigatorController().ForgotPassword : NavigatorController().ForgotPasswordNC,
                               parentViewController: parentViewController,
                               navigationType: navigationType)
    }
    
}
