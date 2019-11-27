//
//  IntroViewController.swift
//  Moyohak
//
//  Created by Nikhil Nandha on 26/11/19.
//  Copyright © 2019 Nikhil Nandha. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, PaginControl {
    
    @IBOutlet var buttonNext: UIButton!
    @IBOutlet var buttonPrev: UIButton!
    @IBOutlet var buttonSkip: UIButton!
    @IBOutlet var scrollV: UIScrollView!
    
    @IBOutlet var pageControl: SCPageControlView!

    let contents = [["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"],
                    ["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"],
                    ["title" : "Be Careful", "detail" : "Easy and smart way to manage your wallet"]]
    
    internal var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        plotScreen()
    }
    
    private func plotScreen() {
        
        addContentViewsInScrollViews()
        initializePageControl()
        setButtons()
    }
    
    private func initializePageControl() {
        pageControl.scp_style = .SCNormal
        pageControl.set_view(contents.count, current: currentIndex, current_color: UIColor.ThemeColorPrimary)
    }
    
    private func addContentViewsInScrollViews() {
        
        for (index, content) in contents.enumerated() {
            let contentView = ScrollContentView.instanceFromNib()
            contentView.labelTitle.text = content["title"]
            contentView.labelDetail.text = content["detail"]
            contentView.frame = CGRect.init(x: scrollV.frame.size.width * CGFloat(index), y: 0, width: scrollV.frame.size.width, height: scrollV.frame.size.height)
            scrollV.addSubview(contentView)
        }
        
        scrollV.contentSize = CGSize(width: scrollV.frame.size.width * CGFloat(contents.count), height: scrollV.frame.size.height)
    }
    
    private func setButtons() {
        switch currentIndex {
        case 0:
            buttonSkip.isHidden = false
            buttonPrev.isHidden = true
            break
        default:
            buttonSkip.isHidden = true
            buttonPrev.isHidden = false
            break
        }
    }
    
    // MARK: - Button Tapped Events -

    @IBAction func skipTapped(sender: UIButton) {
        
    }
    
    @IBAction func nextTapped(sender: UIButton) {
        if currentIndex < contents.count-1 {
            nextPage()
        }else {
            LoginViewModel.showLoginScreen(navigationType: .Push, parentViewController: self)
        }
    }
    
    @IBAction func prevTapped(sender: UIButton) {
        previousPage()
    }

    
    func nextPage() {
        scrollV.setContentOffset(CGPoint.init(x: scrollV.frame.size.width * CGFloat(currentIndex+1), y: 0.0), animated: true)
    }
    
    func previousPage() {
        scrollV.setContentOffset(CGPoint.init(x: scrollV.frame.size.width * CGFloat(currentIndex-1), y: 0.0), animated: true)
    }
}

extension IntroViewController : UIScrollViewDelegate {
    
    //MARK: - ScrollView Delegate -
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        currentIndex = Int(scrollView.contentOffset.x) / Int(scrollView.frame.size.width)
        setButtons()
        pageControl.scroll_did(scrollView)
    }
    
}
