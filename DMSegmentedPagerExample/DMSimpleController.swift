//
//  DMSimpleViewController.swift
//  DMSegmentedPagerExample
//
//  Created by Dominic Miller on 9/14/18.
//  Copyright © 2018 DominicMiller. All rights reserved.
//

import UIKit
import DMSegmentedPager

class DMSimpleViewController: DMSegmentedPagerController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedPager.backgroundColor = .white
        
        // Segmented Control customization
        segmentedPager.segmentedControl.selectionIndicatorLocation = .down
        segmentedPager.segmentedControl.backgroundColor = .white
        segmentedPager.segmentedControl.titleTextAttributes = [.foregroundColor : UIColor.black]
        segmentedPager.segmentedControl.selectedTitleTextAttributes = [.foregroundColor : UIColor.orange]
        segmentedPager.segmentedControl.selectionStyle = .fullWidthStripe
        segmentedPager.segmentedControl.selectionIndicatorColor = .orange
        
        segmentedPager.pager.gutterWidth = 20
    }
    
    let backgroundView = UIView()
    override func loadView() {
        backgroundView.backgroundColor = .white
        view = backgroundView
        view.addSubview(segmentedPager)
    }
    
    override func viewWillLayoutSubviews() {
        let inset = view.safeAreaInsets.top
        segmentedPager.frame = CGRect(x: 0, y: inset, width: view.frame.width, height: view.frame.height - inset)
        super.viewWillLayoutSubviews()
    }
    
    func segmentedPager(_ segmentedPager: DMSegmentedPager, titleForSectionAt index: Int) -> String {
        return ["Table", "Web", "Text"][index]
    }
    
    func segmentedPager(_ segmentedPager: DMSegmentedPager, didScrollWith parallaxHeader: DMParallaxHeader) {
//        print("progress \(parallaxHeader.progress)")
    }
    
}
