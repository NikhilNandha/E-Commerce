//
//  ProductDetailsDescriptionViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 14/12/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class ProductDetailsDescriptionViewController: UIViewController {

    @IBOutlet var specificationTableV: UITableView!
    @IBOutlet var descriptionView: UIView!
    @IBOutlet var descriptionTextView: UITextView!
    
    @IBOutlet var buttonSpecification: UIButton!
    @IBOutlet var buttonDescription: UIButton!
    
    @IBOutlet var descriptionTextViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Product Details"
        
        plotScreen()
    }
    
    func plotScreen() {
        buttonDescription.layer.borderColor = UIColor.white.cgColor
        buttonDescription.layer.borderWidth = 1.0
        
        buttonSpecification.layer.borderColor = UIColor.white.cgColor
        buttonSpecification.layer.borderWidth = 1.0
        
        reloadViews()
    }
    
    override func viewDidLayoutSubviews() {
        descriptionTextView.dropShadow(color: UIColor.ThemeTextDarkGrey, offSet: CGSize(width: -0.5, height: 0.5))
    }

    private func reloadViews() {
        descriptionTextViewHeight.constant = descriptionTextView.contentSize.height
        specificationTableV.reloadData()
        self.view.layoutIfNeeded()
    }
    
    // MARK: - Button Tapped Events -

    @IBAction func descriptionTapped(sender: UIButton) {
        selectButton(index: 0)
    }
    
    @IBAction func specificationTapped(sender: UIButton) {
        selectButton(index: 1)
    }
    
    private func selectButton(index: Int) {
        switch index {
        case 0:
            buttonDescription.isSelected = true
            buttonDescription.backgroundColor = UIColor.white
            buttonSpecification.isSelected = false
            buttonSpecification.backgroundColor = UIColor.clear
            
            descriptionView.isHidden = false
            specificationTableV.isHidden = true
            
        case 1:
            buttonDescription.isSelected = false
            buttonDescription.backgroundColor = UIColor.clear
            buttonSpecification.isSelected = true
            buttonSpecification.backgroundColor = UIColor.white
            
            descriptionView.isHidden = true
            specificationTableV.isHidden = false
            
        default:
            break
        }
    }

}

extension ProductDetailsDescriptionViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductSpecificationTableCell", for: indexPath) as! ProductSpecificationTableCell
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return viewForHeader()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    private func viewForHeader() -> UIView {
        
        let view = UIView.init(frame: (CGRect(x: 0,
                                                y: 0,
                                                width: Double(specificationTableV.frame.size.width)-15,
                                                height: 60)))
        let label = UILabel.init(frame: (CGRect(x: 15, y: 0, width: view.frame.size.width-15, height: view.frame.size.height)))
        
        label.font = UIFont.MuliSemiBold(16)
        label.text = "General Specification"
        
        view.backgroundColor = UIColor.white
        view.addSubview(label)
            
        return view
    }
}


