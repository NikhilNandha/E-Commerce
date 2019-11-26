//
//  NavigatorController.swift
//  MoyohakPartner
//
//  Created by Nikhil Nandha on 10/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import Foundation
import UIKit

struct Storyboard {
    let main: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
}

struct NavigatorController {
    
    //MARK: - Login  & Registration -
    
    let Login = Storyboard().main.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
    let LoginNC = Storyboard().main.instantiateViewController(withIdentifier: "LoginViewController_NC") as! UINavigationController
    
}
