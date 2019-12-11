//
//  SubCategoryTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 11/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class SubCategoryTableCell: UITableViewCell {

    @IBOutlet var labelName: UIView!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var collectionV: UICollectionView!
    @IBOutlet var collectionHeight: NSLayoutConstraint!
    
    let cellHeight : Double = 130
    let productsCount = 9
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewContainer.layer.cornerRadius = 4.0
        viewContainer.layer.borderColor = UIColor.ThemeLightGrey.cgColor
        viewContainer.layer.borderWidth = 1.0
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        collectionV.reloadData()
        
        let totalheight = (Int(cellHeight) * (productsCount/3)) + productsCount + 24
        
        collectionHeight.constant = CGFloat(totalheight)
        self.layoutIfNeeded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension SubCategoryTableCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubCategoryCollectionCell", for: indexPath) as! SubCategoryCollectionCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: Double((collectionView.bounds.width/3) - 12), height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8)
    }
    
}
