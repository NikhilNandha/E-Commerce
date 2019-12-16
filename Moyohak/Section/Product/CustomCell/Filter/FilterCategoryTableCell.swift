//
//  FilterCategoryTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 16/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class FilterCategoryTableCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var imageViewMarked: UIImageView!
    @IBOutlet var viewContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any], selectedIndex: Int) {
        
        if indexPath.row == selectedIndex {
            viewContainer.backgroundColor = UIColor.white
            imageViewMarked.image = UIImage.init(named: "SelectedGreenDot")
        }else {
            viewContainer.backgroundColor = UIColor.ThemeLightGrey
            imageViewMarked.image = nil
        }
        
    }

}
