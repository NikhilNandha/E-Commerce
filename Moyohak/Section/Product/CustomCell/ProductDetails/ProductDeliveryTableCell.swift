//
//  ProductDeliveryTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 10/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductDeliveryTableCell: UITableViewCell {

    @IBOutlet var buttonProductDetails: UIButton!
    @IBOutlet var buttonShare: UIButton!
    @IBOutlet var labelDeliveryDays: UILabel!
    @IBOutlet var labelDeliveryCharges: UILabel!
    @IBOutlet var labelDeliveryPincode: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
