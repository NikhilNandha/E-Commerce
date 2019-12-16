//
//  ProductSpecificationTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 16/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductSpecificationTableCell: UITableViewCell {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
