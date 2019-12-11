//
//  CartViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 29/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class CartViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    
    @IBOutlet var buttonAmount: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableV.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Button Tappped -

    @IBAction func placeOrderTapped(sender: UIButton) {
        
    }

}

extension CartViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableCell(tableView: tableView, indexPath: indexPath)
    }
    
    func tableCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartDetailsTableCell", for: indexPath) as! CartDetailsTableCell
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CartProductTableCell", for: indexPath) as! CartProductTableCell
            
            return cell
        }
    }
}
