//
//  IntroViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 26/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet var buttonNext: UIButton!
    @IBOutlet var buttonPrev: UIButton!
    @IBOutlet var buttonSkip: UIButton!
    @IBOutlet var scrollV: UIScrollView!
    
    @IBOutlet var pageControl: SCPageControlView!

    let contents = [["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"],
                    ["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"],
                    ["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        plotScreen()
    }
    
    private func plotScreen() {
        
        buttonSkip.isHidden = true
        addContentViewsInScrollViews()
        initializePageControl()
    }
    
    private func initializePageControl() {
        pageControl.scp_style = .SCNormal
        pageControl.set_view(3, current: 0, current_color: UIColor.ThemeColorPrimary)
    }
    
    private func addContentViewsInScrollViews() {
        
        for (index, content) in contents.enumerated() {
            let contentView = ScrollContentView.instanceFromNib()
            contentView.labelTitle.text = content["title"]
            contentView.labelDetail.text = content["detail"]
            contentView.frame = CGRect.init(x: scrollV.frame.size.width * CGFloat(index), y: 0, width: scrollV.frame.size.width, height: scrollV.frame.size.height)
            scrollV.addSubview(contentView)
        }
    }
    
    // MARK: - Button Tapped Events -

    @IBAction func skipTapped(sender: UIButton) {
        
    }
    
    @IBAction func nextTapped(sender: UIButton) {
        
    }
    
    @IBAction func prevTapped(sender: UIButton) {
        
    }

}

extension IntroViewController : UIScrollViewDelegate {
    
    //MARK: - ScrollView Delegate -
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        pageControl.scroll_did(scrollView)
    }
    
}
