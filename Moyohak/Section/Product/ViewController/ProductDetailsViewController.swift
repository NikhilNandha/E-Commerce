//
//  ProductDetailsViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 08/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductDetailsViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableV.reloadData()
    }
    
    // MARK: - Button Tapped Events -

    @IBAction func addToCartTapped(sender: UIButton) {
        
    }
    
    @IBAction func buyNowTapped(sender: UIButton) {
        
    }
    
    @IBAction func productDetailsTapped(sender: UIButton) {
        ProductViewModel.showProductDescription(navigationType: .Push, parentViewController: self)
    }
    
    @IBAction func rateProductTapped(sender: UIButton) {
        ProductViewModel.showRateProductScreen(navigationType: .Push, parentViewController: self)
    }
    
}

extension ProductDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableCellForIndexPath(tableView, indexPath: indexPath)
    }
    
    func tableCellForIndexPath(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductImageTableCell", for: indexPath) as! ProductImageTableCell
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailsTableCell", for: indexPath) as! ProductDetailsTableCell
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDeliveryTableCell", for: indexPath) as! ProductDeliveryTableCell
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductSellerTableCell", for: indexPath) as! ProductSellerTableCell
            
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductRatingTableCell", for: indexPath) as! ProductRatingTableCell
            
            return cell
        default:
            return UITableViewCell()
        }
        
    }
}
