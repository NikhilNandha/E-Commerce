//
//  MyOrdersViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 13/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class MyOrdersViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "My Orders"
    }
    

    override func viewDidAppear(_ animated: Bool) {
        tableV.reloadData()
        self.view.layoutIfNeeded()
    }
    

}

extension MyOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrdersTableCell", for: indexPath) as! OrdersTableCell
        
        cell.configureCell(indexPath: indexPath, data: [:])
        
        return cell
    }
}
