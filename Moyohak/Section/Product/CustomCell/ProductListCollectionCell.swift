//
//  ProductListCollectionCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 04/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductListCollectionCell: UICollectionViewCell {

    @IBOutlet var imageV: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var labelPrice: UILabel!
    @IBOutlet var labelPriceSlashed: UILabel!
    @IBOutlet var labelOff: UILabel!
    @IBOutlet var buttonLike: UIButton!
    @IBOutlet var viewContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        
    }

}
