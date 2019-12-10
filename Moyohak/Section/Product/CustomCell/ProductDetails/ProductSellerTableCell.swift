//
//  ProductSellerTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 10/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductSellerTableCell: UITableViewCell {

    @IBOutlet var labelSellerName: UILabel!
    @IBOutlet var buttonWatsapp: UIButton!
    @IBOutlet var buttonWebsite: UIButton!
    @IBOutlet var buttonDirection: UIButton!
    @IBOutlet var buttonContact: UIButton!
    @IBOutlet var labelStockLoad: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
