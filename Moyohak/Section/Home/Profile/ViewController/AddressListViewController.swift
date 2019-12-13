//
//  AddressListViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 12/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class AddressListViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    @IBOutlet var buttonHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "My Addresses"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableV.reloadData()
    }

    
    // MARK: - Button Tapped Events -

    @IBAction func addAddressTapped(sender: UIButton) {
        ProfileViewModel.showAddAddressesScreen(navigationType: .Push, parentViewController: self)
    }
    
}

extension AddressListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressDetailsTableCell", for: indexPath) as! AddressDetailsTableCell
        
        return cell
    }
}
