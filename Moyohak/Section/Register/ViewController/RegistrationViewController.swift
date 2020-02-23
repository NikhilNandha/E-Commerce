//
//  RegistrationViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class RegistrationViewController: SuperViewController {
    
    @IBOutlet var textfieldMobile: UITextField!
    @IBOutlet var textfieldPassword: UITextField!
    @IBOutlet var viewEmail: UIView!
    @IBOutlet var viewPassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        plotScreen()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }

    private func plotScreen() {
        viewEmail.layer.cornerRadius = 8.0
        viewPassword.layer.cornerRadius = 8.0
        viewEmail.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
        viewPassword.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
    }
    
    // MARK: - Button Tapped Events -
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        RegistrationViewModel.showOTPScreen(navigationType: .Push, parentViewController: self)
    }
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        if ViewNavigator.shared.parentViewController.isKind(of: LoginViewController.self) {
            ViewNavigator.shared.navigateBack()
        }
    }
    
}
