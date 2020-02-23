//
//  OrdersTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 13/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class OrdersTableCell: UITableViewCell {
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelStatus: UILabel!
    @IBOutlet var buttonRate: UIButton!
    
    @IBOutlet var imageViewProduct: UIImageView!
    @IBOutlet var imageViewStatus: UIImageView!
    
    @IBOutlet var viewDetails: UIView!
    @IBOutlet var labelDetailsTitle: UILabel!
    @IBOutlet var labelDetailsDetail: UILabel!
    
    @IBOutlet var detailViewHeight: NSLayoutConstraint!
    @IBOutlet var detailLabelBottomConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageViewStatus.layer.cornerRadius = 5
        
        imageViewProduct.layer.borderWidth = 1.0
        imageViewProduct.layer.borderColor = UIColor.ThemeLightGrey.cgColor
        
        buttonRate.dropShadow(color: UIColor.ThemeLightGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        if indexPath.row%2 == 0 {
            detailViewHeight.isActive = false
        }else {
            detailViewHeight.isActive = true
            detailViewHeight.constant = 0
        }
    }

}
