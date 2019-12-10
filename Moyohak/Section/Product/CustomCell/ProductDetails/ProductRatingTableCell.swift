//
//  ProductRatingTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 10/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductRatingTableCell: UITableViewCell {
    
    @IBOutlet var labelRatingPercent: UILabel!
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var labelComments: UILabel!
    @IBOutlet var buttonRate: UIButton!
    
    @IBOutlet var label5Star: UILabel!
    @IBOutlet var label4Star: UILabel!
    @IBOutlet var label3Star: UILabel!
    @IBOutlet var label2Star: UILabel!
    @IBOutlet var label1Star: UILabel!
    
    @IBOutlet var view5Star: UIView!
    @IBOutlet var view5StarInner: UIView!
    @IBOutlet var view4Star: UIView!
    @IBOutlet var view4StarInner: UIView!
    @IBOutlet var view3Star: UIView!
    @IBOutlet var view3StarInner: UIView!
    @IBOutlet var view2Star: UIView!
    @IBOutlet var view2StarInner: UIView!
    @IBOutlet var view1Star: UIView!
    @IBOutlet var view1StarInner: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
