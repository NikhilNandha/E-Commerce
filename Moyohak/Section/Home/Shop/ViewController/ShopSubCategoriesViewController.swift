//
//  ShopSubCategoriesViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 11/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ShopSubCategoriesViewController: UIViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Clothing"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableV.reloadData()
    }

    
}

extension ShopSubCategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoryTableCell", for: indexPath) as! SubCategoryTableCell
        
        cell.configureCell(indexPath: indexPath, data: [:])
        
        return cell
    }
}
