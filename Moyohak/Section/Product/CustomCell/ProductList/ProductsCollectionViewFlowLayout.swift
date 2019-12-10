//
//  ProductsCollectionViewFlowLayout.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 04/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductsCollectionViewFlowLayout: UICollectionViewFlowLayout {

    init(collectionView: UICollectionView) {
        super.init()
        
        self.minimumInteritemSpacing = 4.0
        self.minimumLineSpacing = 4.0
        self.itemSize = CGSize.init(width: Double((collectionView.frame.size.width/2) - 4), height: 244.0)
        self.sectionInset = UIEdgeInsets.init(top: 2, left: 2, bottom: 2, right: 2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
