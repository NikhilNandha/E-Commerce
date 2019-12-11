//
//  ShopViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 28/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ShopViewController: SuperViewController, UITextFieldDelegate {

    @IBOutlet var searchTextfield: UITextField!
    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableV.reloadData()
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        if self.tabBarController?.tabBar.isHidden ?? false {
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    // MARK: - Button Tapped Methods -
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
    
    // MARK: - Button Tapped Methods -

    @IBAction func notificationButtonTapped(sender: UIButton) {
        
    }
    
    @IBAction func cartButtonTapped(sender: UIButton) {
        
    }

}

extension ShopViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return cellFor(tableView:tableView, indexPath: indexPath)
        
    }
    
    private func cellFor(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCategoriesTableCell", for: indexPath) as! ShopCategoriesTableCell
            cell.configureCell(indexPath: indexPath, data: [:])
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopBannerTableCell", for: indexPath) as! ShopBannerTableCell
            cell.configureCell(indexPath: indexPath, data: [:])
            return cell
        case 2, 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopProductTableCell", for: indexPath) as! ShopProductTableCell
            cell.configureCell(indexPath: indexPath, data: [:])
            return cell
        default:
            return UITableViewCell()
        }
    }
    
}
