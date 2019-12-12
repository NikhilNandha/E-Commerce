//
//  ProfileViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 29/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProfileViewController: SuperViewController {

    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Account"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if self.tabBarController?.tabBar.isHidden ?? false {
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableV.reloadData()
    }

    

}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ProfileViewModel.shared.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ProfileViewModel.shared.dataArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let data = ProfileViewModel.shared.dataArray[indexPath.section]
        let string = data[indexPath.row]
        
        cell.textLabel?.font = UIFont.MuliSemiBold(17)
        cell.textLabel?.text = string
        cell.textLabel?.textColor = UIColor.ThemeTextDarkGrey
        
        if indexPath.section == 0 {
            cell.imageView?.image = UIImage.init(named: "RadioDeselected")
        }else {
            cell.imageView?.image = nil
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = ProfileViewModel.shared.dataArray[indexPath.section]
        showProfieScreenFor(Profile(rawValue: data[indexPath.row])!)
    }
    
    
    func showProfieScreenFor(_ name: Profile) {
        
        switch name {
        case Profile.MyAddresses:
            ProfileViewModel.showAddressesScreen(navigationType: .Push, parentViewController: self)
            break
        default: break
        }
        
    }
    
}
