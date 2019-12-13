//
//  MyWishlistsViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 13/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class MyWishlistsViewController: SuperViewController {

    @IBOutlet var collectionV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "My Wishlists"
        
        collectionV.register(UINib.init(nibName: "ProductListCollectionCell", bundle: nil), forCellWithReuseIdentifier: "ProductListCollectionCell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.configureData()
        self.plotScren()
    }
   
    private func configureData() {
        collectionV.collectionViewLayout = ProductsCollectionViewFlowLayout(collectionView: collectionV)
        
    }
   
   private func plotScren() {
       
       collectionV.reloadData()
   }
    
}

extension MyWishlistsViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListCollectionCell", for: indexPath) as! ProductListCollectionCell
        
        cell.configureCell(indexPath: indexPath, data: [:])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        ProductViewModel.showProductDetails(navigationType: .Push, parentViewController: self)
    }
    
}
