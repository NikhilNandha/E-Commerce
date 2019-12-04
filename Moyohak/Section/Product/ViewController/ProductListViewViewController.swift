//
//  ProductListViewViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 04/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductListViewViewController: SuperViewController {

    @IBOutlet var productsCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.configureData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.plotScren()
    }
    
    private func configureData() {
        productsCollection.register(UINib.init(nibName: "ProductListCollectionCell", bundle: nil), forCellWithReuseIdentifier: "ProductListCollectionCell")
    }
    
    private func plotScren() {
        
        productsCollection.reloadData()
    }
    
    // MARK: - Button Tapped -

    @IBAction func sortButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func filterButtonTapped(sender: UIButton) {
        
    }

}

extension ProductListViewViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListCollectionCell", for: indexPath) as! ProductListCollectionCell
        
        cell.configureCell(indexPath: indexPath, data: [:])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: (collectionView.frame.size.width/2) - 2, height: 244.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
