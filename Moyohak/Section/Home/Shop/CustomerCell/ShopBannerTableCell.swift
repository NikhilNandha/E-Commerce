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
    @IBOutlet var viewPaging : SCPageControlView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        initializePageControl()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(indexPath: IndexPath, data: [String: Any]) {
        collectionV.reloadData()
        
    }
    
    private func initializePageControl() {
        viewPaging.scp_style = .SCNormal
        viewPaging.set_view(4, current: 0, current_color: UIColor.ThemeColorPrimary)
    }
    
}

extension ShopBannerTableCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopBannerCollectionCell", for: indexPath) as! ShopBannerCollectionCell
        cell.imageView.backgroundColor = UIColor.ThemeColorGreen
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        ProductViewModel.showProductsList(navigationType: .Push, parentViewController: ViewNavigator.shared.currentViewController!)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        viewPaging.scroll_did(scrollView)
    }
}
