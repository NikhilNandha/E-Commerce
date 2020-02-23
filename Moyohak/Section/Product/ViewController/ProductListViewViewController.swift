//
//  ProductListViewViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 04/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductListViewViewController: SuperViewController {

    @IBOutlet var productsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productsCollectionView.register(UINib.init(nibName: "ProductListCollectionCell", bundle: nil), forCellWithReuseIdentifier: "ProductListCollectionCell")
    }
    
    
    override func viewWillLayoutSubviews() {
        self.configureData()
    }
    
    override func viewDidAppear(_ animated: Bool) {    
        self.plotScren()
    }
    
    private func configureData() {
        productsCollectionView.collectionViewLayout = ProductsCollectionViewFlowLayout(collectionView: productsCollectionView)
    }
    
    private func plotScren() {
        productsCollectionView.reloadData()
    }
    
    // MARK: - Button Tapped -

    @IBAction func sortButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func filterButtonTapped(sender: UIButton) {
        ProductViewModel.showFilterScreen(navigationType: .Push, parentViewController: self)
    }

}

extension ProductListViewViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
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
