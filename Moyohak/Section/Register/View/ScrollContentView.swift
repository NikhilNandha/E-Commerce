//
//  ScrollContentView.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 27/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ScrollContentView: UIView {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelDetail: UILabel!
    
    class func instanceFromNib() -> Self {
        return UINib(nibName: "ScrollContentView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! Self
    }
    

}
