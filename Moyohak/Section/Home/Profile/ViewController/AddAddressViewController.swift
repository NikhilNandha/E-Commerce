//
//  AddAddressViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 13/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class AddAddressViewController: SuperViewController {

    @IBOutlet var textFieldPincode: UITextField!
    @IBOutlet var textFieldAddress1: UITextField!
    @IBOutlet var textFieldAddress2: UITextField!
    @IBOutlet var textFieldCity: UITextField!
    @IBOutlet var textFieldState: UITextField!
    @IBOutlet var buttonHome: UIButton!
    @IBOutlet var buttonWork: UIButton!
    @IBOutlet var textFieldName: UITextField!
    @IBOutlet var textFieldMobileNumber: UITextField!
    @IBOutlet var textFieldAlternateNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Add New Address"
    }
    

    
    // MARK: - Navigation

    @IBAction func saveTapped(sender: UIButton) {
        
    }
    
    @IBAction func homeTapped(sender: UIButton) {
        
    }
    
    @IBAction func workTapped(sender: UIButton) {
        
    }

}
