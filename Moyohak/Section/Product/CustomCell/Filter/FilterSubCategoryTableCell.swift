//
//  FilterSubCategoryTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 16/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class FilterSubCategoryTableCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var buttonCheck: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        
    }

}
