//
//  PaymentViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 12/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Payments"
    }
    

    
    // MARK: - Button Tapped Events -

    @IBAction func continueTapped(sender: UIButton) {
        
    }

}

extension PaymentViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return CartViewModel.shared.tableArray.count
        }else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableCell(tableView, indexPath: indexPath)
    }
    
    func tableCell(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CheckoutAddressTableCell", for: indexPath) as! CheckoutAddressTableCell
            
            return cell
        }
    }
}
