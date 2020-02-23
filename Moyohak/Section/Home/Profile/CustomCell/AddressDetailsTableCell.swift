//
//  AddressDetailsTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 12/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class AddressDetailsTableCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelType: UILabel!
    @IBOutlet var labelAddress: UILabel!
    @IBOutlet var labelNumber: UILabel!
    
    @IBOutlet var imageViewRadio: UIImageView!
    
    @IBOutlet var buttonEdit: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        buttonEdit.dropShadow(color: UIColor.ThemeLightGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func editTapped(sender: UIButton) {
        ProfileViewModel.showAddAddressesScreen(navigationType: .Push, parentViewController: ViewNavigator.shared.currentViewController!)
    }
}
