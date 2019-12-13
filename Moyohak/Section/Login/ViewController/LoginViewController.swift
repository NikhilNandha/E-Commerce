//
//  LoginViewController.swift
//  MoyohakPartner
//
//  Created by Nikhil Nandha on 10/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class LoginViewController: SuperViewController {

    @IBOutlet var textfieldMobile: UITextField!
    @IBOutlet var textfieldPassword: UITextField!
    @IBOutlet var viewEmail: UIView!
    @IBOutlet var viewPassword: UIView!
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        plotScreen()
    }
    
    private func plotScreen() {
        viewEmail.layer.cornerRadius = 8.0
        viewPassword.layer.cornerRadius = 8.0
        viewEmail.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
        viewPassword.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
    }
    
    // MARK: - Button Tapped Events -
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        RegistrationViewModel.showRegistrationScreen(navigationType: .Push, parentViewController: self)
    }
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        AppRootContainer.setTabBar(window: AppConstants.appDelegate.window)
    }
    
    @IBAction func forgotPasswordButtonTapped(sender: UIButton) {
        LoginViewModel.showForgotPasswordScreen(navigationType: .Push, parentViewController: self)
    }
}
