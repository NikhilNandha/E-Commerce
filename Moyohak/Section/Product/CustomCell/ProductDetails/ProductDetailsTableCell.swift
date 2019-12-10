//
//  ProductDetailsTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 10/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductDetailsTableCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var buttonMore: UIButton!
    @IBOutlet var labelBrandName: UILabel!
    @IBOutlet var labelPrice: UILabel!
    @IBOutlet var labelPriceSlashed: UILabel!
    @IBOutlet var labelOff: UILabel!
    @IBOutlet var labelRatingPercent: UILabel!
    @IBOutlet var labelRatingAndComments: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
