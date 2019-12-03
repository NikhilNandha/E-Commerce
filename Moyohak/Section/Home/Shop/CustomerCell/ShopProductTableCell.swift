//
//  ShopProductTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 01/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ShopProductTableCell: UITableViewCell {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelDetail: UILabel!
    @IBOutlet var buttonViewAll: UIButton!
    
    @IBOutlet var viewContainer: UIView!
    
    @IBOutlet var collectionV : UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
