//
//  pageController.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

var addPageController: UIPageControl = {
    
    
    let pageControl = UIPageControl(frame: CGRect(x: 16, y: 520, width: 343, height: 26))
    
    pageControl.currentPageIndicatorTintColor = .orange
    pageControl.pageIndicatorTintColor = .lightGray
    pageControl.numberOfPages = 3
    pageControl.updateCurrentPageDisplay()


    return pageControl
    
    
}()
