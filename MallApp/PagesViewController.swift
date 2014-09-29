//
//  PagesViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/25/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class PagesViewController: UIViewController, UIPageViewControllerDataSource {

    var pageViewController : UIPageViewController?
    var pageImages : Array<String> = ["first.jpg", "first.jpg", "first.jpg"]
    var currentIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.lightGrayColor()
        pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
        pageControl.backgroundColor = UIColor.clearColor()
        pageControl.frameForAlignmentRect(CGRectMake(0, 0, 20, 20))
   
        
        self.pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        self.pageViewController!.dataSource = self
        
        let startingViewController: PageContentViewController = self.viewControllerAtIndex(0)!
        let viewControllers: NSArray = [startingViewController]
        self.pageViewController!.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: nil)
        self.pageViewController!.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        
        self.addChildViewController(self.pageViewController!)
        self.view.addSubview(self.pageViewController!.view)
        self.pageViewController!.didMoveToParentViewController(self)
    }
    
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as PageContentViewController).pageIndex
        
        if index == NSNotFound {
            return nil
        }
        
        index++
        
        println("Increasing Index: \(String(index))")
        
        if (index == self.pageImages.count) {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        var index = (viewController as PageContentViewController).pageIndex
        
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index--
        
        println("Decreasing Index: \(String(index))")
        
        return self.viewControllerAtIndex(index)
        
    }
    
    
    func viewControllerAtIndex(index: Int) -> PageContentViewController?
    {
        if self.pageImages.count == 0 || index >= self.pageImages.count
        {
            return nil
        }
        
        var pageContentViewController = PageContentViewController()
        
        pageContentViewController.imageFile = self.pageImages[index]
        pageContentViewController.pageIndex = index
        self.currentIndex = index
        
        return pageContentViewController
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return self.pageImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }
    

}
