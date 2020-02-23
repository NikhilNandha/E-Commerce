//
//  CheckoutAddressTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 12/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class CheckoutAddressTableCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelAddress: UILabel!
    @IBOutlet var labelNumber: UILabel!
    
    @IBOutlet var buttonAdd: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func addAddressTapped(sender: UIButton) {
        ProfileViewModel.showAddressesScreen(navigationType: .Push, parentViewController: ViewNavigator.shared.currentViewController!)
    }
    
}
