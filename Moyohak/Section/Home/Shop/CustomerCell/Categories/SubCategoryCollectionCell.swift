//
//  SubCategoryCollectionCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 11/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class SubCategoryCollectionCell: UICollectionViewCell {
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var viewContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewContainer.layer.borderColor = UIColor.ThemeLightGrey.cgColor
        viewContainer.layer.borderWidth = 1.0
    }
}
