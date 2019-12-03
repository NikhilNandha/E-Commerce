//
//  ShopViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 28/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var searchTextfield: UITextField!
    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Button Tapped Methods -
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
    
    // MARK: - Button Tapped Methods -

    @IBAction func notificationButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func cartButtonTapped(sender: UIButton) {
        
    }

}

extension ShopViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
    
}
