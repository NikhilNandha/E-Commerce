//
//  ForgotPasswordViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet var viewMobileNumber: UIView!
    @IBOutlet var textfieldMobileNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        plotScreen()
    }
    
    private func plotScreen() {
        viewMobileNumber.layer.cornerRadius = 8.0
        viewMobileNumber.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
    }
    
    // MARK: - Button Tapped -

    @IBAction func submitTapped(sender: UIButton) {
        
    }
    
    @IBAction func backTapped(sender: UIButton) {
        ViewNavigator.shared.navigateBack()
    }
    
}
