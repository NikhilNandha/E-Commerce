//
//  CartProductTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 11/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class CartProductTableCell: UITableViewCell {
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelSellerName: UILabel!
    @IBOutlet var labelQty: UILabel!
    @IBOutlet var labelDeliveryDays: UILabel!
    @IBOutlet var labelDeliveryCharges: UILabel!
    @IBOutlet var labelPrice: UILabel!
    @IBOutlet var labelPriceSlashed: UILabel!
    @IBOutlet var labelOff: UILabel!
    
    @IBOutlet var imageViewProduct: UIImageView!
    
    @IBOutlet var viewQty: UIView!
    
    @IBOutlet var buttonWishlist: UIButton!
    @IBOutlet var buttonRemove: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewQty.dropShadow(color: UIColor.ThemeLightGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
