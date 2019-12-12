//
//  CheckoutViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 12/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class CheckoutViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Checkout"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableV.reloadData()
    }

    
    // MARK: - Button Tapped -

    @IBAction func continueTapped(sender: UIButton) {
        CartViewModel.showPaymentScreen(navigationType: .Push, parentViewController: self)
    }
}

extension CheckoutViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableCell(tableView: tableView, indexPath: indexPath)
    }
    
    func tableCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartDetailsTableCell", for: indexPath) as! CartDetailsTableCell
            
            return cell
        }else if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CheckoutAddressTableCell", for: indexPath) as! CheckoutAddressTableCell
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartProductTableCell", for: indexPath) as! CartProductTableCell
            
            return cell
        }
    }
}
