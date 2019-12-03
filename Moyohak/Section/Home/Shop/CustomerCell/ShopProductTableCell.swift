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

