//
//  RateProductViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 16/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class RateProductViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    
    @IBOutlet var imageViewProduct: UIImageView!
    @IBOutlet var textViewComment: UITextView!
    @IBOutlet var viewStars: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Rate Product"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        textViewComment.layer.cornerRadius = 6.0
        viewStars.layer.cornerRadius = 6.0
        textViewComment.dropShadow(color: UIColor.ThemeTextDarkGrey, offSet: CGSize(width: -0.5, height: 0.5))
        viewStars.dropShadow(color: UIColor.ThemeTextDarkGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    
    // MARK: - Navigation

    @IBAction func submitTapped(sender: UIButton) {
        
    }

}
