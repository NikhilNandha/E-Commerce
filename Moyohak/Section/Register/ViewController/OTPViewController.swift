//
//  OTPViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class OTPViewController: SuperViewController, UITextFieldDelegate {
    
    @IBOutlet var textfield1: UITextField!
    @IBOutlet var textfield2: UITextField!
    @IBOutlet var textfield3: UITextField!
    @IBOutlet var textfield4: UITextField!
    
    @IBOutlet var labelTitle: UILabel!
    
    var textfields = [UITextField]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        textfields = [textfield1, textfield2, textfield3, textfield4]
        
        textfield1.becomeFirstResponder()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    // MARK: - Textfield Methods -
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text,
            let textRange = Range(range, in: text)
        {
            let updatedText = text.replacingCharacters(in: textRange, with: string)
            
            if updatedText.count == 1 {
                
                //Enter text into Textfield
                if textField.tag <= 3 {
                    textField.text = updatedText
                }
                
                //Start editing next textfield
                if textField.tag < 3 {
                    let nextTextfield = textfields[textField.tag+1]
                    nextTextfield.becomeFirstResponder()
                }
                
            }else if updatedText.count == 0 {
                
                //                //start editing previous textfield
                //                if textField.tag > 0 && updatedText.count == textField.text?.count ?? 0 {
                //                    let prevTextfield = textfields[textField.tag-1]
                //                    prevTextfield.becomeFirstResponder()
                //                }
                
                //Enter text into Textfield
                if textField.tag >= 0 {
                    textField.text = updatedText
                }
                
            }
        }
        
        return false
    }
    
    // MARK: - Button Tapped Event -
    
    @IBAction func proceedButtonTapped() {
//        RegistrationViewModel.showOTPScreen(navigationType: .Push, parentViewController: self)
    }
    
    @IBAction func resendButtonTapped() {
        
    }
    
    @IBAction func backButtonTapped() {
        ViewNavigator.shared.navigateBack()
    }
    
}
