//
//  ForgotPasswordViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: SuperViewController {

    @IBOutlet var viewMobileNumber: UIView!
    @IBOutlet var viewEmail: UIView!
    @IBOutlet var textfieldMobileNumber: UITextField!
    @IBOutlet var textfieldEmail: UITextField!
    
    @IBOutlet var buttonChangeType: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        plotScreen()
    }
    
    private func plotScreen() {
        viewMobileNumber.layer.cornerRadius = 8.0
        viewMobileNumber.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
        viewEmail.layer.cornerRadius = 8.0
        viewEmail.dropShadow(color: UIColor.lightGray, offSet: CGSize(width: -1, height: 1))
    }
    
    // MARK: - Button Tapped -

    @IBAction func submitTapped(sender: UIButton) {
        
    }
    
    @IBAction func backTapped(sender: UIButton) {
        ViewNavigator.shared.navigateBack()
    }
    
    @IBAction func changeTypeTapped(sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            viewEmail.isHidden = true
            viewMobileNumber.isHidden = false
        }else {
            sender.isSelected = true
            viewMobileNumber.isHidden = true
            viewEmail.isHidden = false
        }
    }
    
}
