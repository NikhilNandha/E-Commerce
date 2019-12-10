//
//  ProductImageTableCell.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 10/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductImageTableCell: UITableViewCell {

    @IBOutlet var imageV: UIImageView!
    @IBOutlet var collectionV: UICollectionView!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        likeButton.layer.cornerRadius = likeButton.frame.size.width/2
        likeButton.clipsToBounds = true
        likeButton.dropShadow(color: UIColor.ThemeLightGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        collectionV.reloadData()
    }

}

extension ProductImageTableCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductDetailsImageCollectionCell", for: indexPath) as! ProductDetailsImageCollectionCell
        
        cell.imageView.layer.borderWidth = 1.0
        cell.imageView.layer.borderColor = UIColor.ThemeLightGrey.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 64.0, height: 64.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
}
