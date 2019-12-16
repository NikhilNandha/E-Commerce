//
//  FilterProductViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 16/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class FilterProductViewController: UIViewController {

    @IBOutlet var tableViewCategory: UITableView!
    @IBOutlet var tableViewSubCategory: UITableView!
    @IBOutlet var textfieldSearch: UITextField!
    @IBOutlet var viewSearch: UIView!
    
    var selectedCategory = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     
        self.title = "Filters"
        
        confirgureView()
        reloadData()
    }
    
    func reloadData() {
        reloadCategories()
        reloadSubCategories()
    }
    
    func confirgureView() {
        viewSearch.layer.borderColor = UIColor.ThemeLightGrey.cgColor
        viewSearch.layer.borderWidth = 1.0
        addRightBarButtonItem()
    }
    
    func addRightBarButtonItem() {
        let rightBarButtonItem  = UIBarButtonItem.init(title: "Clear", style: UIBarButtonItem.Style.plain, target: self, action: #selector(clearTapped(sender:)))
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }

    
    func reloadCategories() {
        tableViewCategory.reloadData()
    }
    
    func reloadSubCategories() {
        tableViewSubCategory.reloadData()
    }
    
    // MARK: - Button Tapped Events -

    @IBAction func applyFilterTapped(sender: UIButton) {
        ViewNavigator.shared.navigateBack()
    }
    
    @IBAction func clearTapped(sender: UIButton) {
        
    }
    
    @IBAction func subFilterCheckTapped(sender: UIButton) {
        if sender.isSelected == true {
            sender.isSelected = false
        }else {
            sender.isSelected = true
        }
    }
    
}

extension FilterProductViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getTableCellFor(tableView: tableView, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableViewCategory {
            selectedCategory = indexPath.row
            tableViewCategory.reloadData()
        }
    }
    
    private func getTableCellFor(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableViewCategory {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FilterCategoryTableCell", for: indexPath) as! FilterCategoryTableCell
            cell.configureCell(indexPath: indexPath, data: [:], selectedIndex: selectedCategory)
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FilterSubCategoryTableCell", for: indexPath) as! FilterSubCategoryTableCell
            
            return cell
        }
    }
}
