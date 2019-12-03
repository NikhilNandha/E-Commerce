//
//  ShopBannerTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 01/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ShopBannerTableCell: UITableViewCell {

    @IBOutlet var collectionV : UICollectionView!
    @IBOutlet var viewPaging : UIView!
    
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
        
    }
    
}

extension ShopBannerTableCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopBannerCollectionCell", for: indexPath) as! ShopBannerCollectionCell
        cell.imageView.image = UIImage.init(named: "AllCategories")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
}
