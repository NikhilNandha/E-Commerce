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
    
    @IBOutlet var collectionHeight : NSLayoutConstraint!
    
    let cellHeight : Double = 243
    let productsCount = 4
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        buttonViewAll.layer.cornerRadius = 4.0
        buttonViewAll.layer.borderWidth = 1.0
        buttonViewAll.layer.borderColor = UIColor.ThemeTextDarkGrey.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        collectionV.reloadData()
        
        let totalheight = (Int(cellHeight) * (productsCount/2)) + productsCount
        
        collectionHeight.constant = CGFloat(totalheight)
        self.layoutIfNeeded()
        
        if indexPath.row%2 == 0 {
            labelTitle.textColor = UIColor.white
            labelDetail.textColor = UIColor.white
            viewContainer.backgroundColor = UIColor.ThemeColorPrimary
        }else {
            labelTitle.textColor = UIColor.ThemeTextDarkGrey
            labelDetail.textColor = UIColor.ThemeTextDarkGrey
            viewContainer.backgroundColor = UIColor.init(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        }
    }
    
}

extension ShopProductTableCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopProductCollectionCell", for: indexPath) as! ShopProductCollectionCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: Double((collectionView.bounds.width/2) - 2), height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

