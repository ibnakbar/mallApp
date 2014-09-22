//
//  MainViewController.swift
//  mallApp
//
//  Created by PanaCloud on 9/19/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    var view1:UIView!
    var vc:UIViewController!
    var counter:Int!
    var vcMainTable:UIViewController!


    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.blackColor()
        counter=0
        vcMainTable = self.storyboard!.instantiateViewControllerWithIdentifier("idMainTable") as UIViewController
        vcMainTable.view.frame = CGRectMake(5, 50, self.view.bounds.width-5, self.view.bounds.height);
        self.addChildViewController(vcMainTable)
        self.view.addSubview(vcMainTable.view)
        vcMainTable.didMoveToParentViewController(self)
        
        vc = self.storyboard!.instantiateViewControllerWithIdentifier("idProfile") as UIViewController
        vc.view.backgroundColor = UIColor.lightGrayColor()
        vc.view.frame = CGRectMake(-160, 0, 0, 0)
        vc.view.tag = 11
        self.addChildViewController(vc)
        self.view.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
    }
    
    override func viewWillAppear(animated: Bool) {
        vc.view.frame = CGRectMake(-160, 0, 0, 0)
        
    }

     override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch:AnyObject in touches{
            if !(touch.view == self.vc.view)
            {
                showHideSetting()}
            }
    }
    
    func showHideSetting()
    {
        if (counter%2==0)
        {
            UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: {
                self.vc.view.alpha = 1
                self.vc.view.frame = CGRectMake(0, 50, 160, 480)
                }, completion: nil)
            self.vcMainTable.view.userInteractionEnabled = false
        }
            
        else if !(counter%2==0)
        {
            for settingView in self.view.subviews as [UIView]
            {   if settingView.tag == 11
                {
                UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.allZeros, animations: {settingView.frame = CGRectMake(-160, 0, 0, 0)}, completion: nil)
                }
            }
            self.vcMainTable.view.userInteractionEnabled = true
        }
        counter = counter + 1
    }
}
