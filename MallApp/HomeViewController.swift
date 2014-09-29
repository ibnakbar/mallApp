//
//  HomeViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/24/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController {
   
    //=========================   Global Variables
    var bottomView:UIView!
    var screenWidth:CGFloat!
    var screenHeight:CGFloat!
    
    //=========================   Menu Buttons
    var btnMenu:UIButton!
    var btnSearch:UIButton!
    var btnNotification:UIButton!
    
    //=========================   Home Screen Views
    var navView:UIView!
    var adsView:AdsTableViewController!
    var pageView:PagesViewController!
    
    //=========================   Custom Controllers Instances
   var menuVC:MenuViewController!

    //=============================//=============================//=============================

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //=========================   Initilizers of global variables
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        println("Screen width: \(screenWidth)")
        println("Screen Height: \(screenHeight)")
        
        //=========================   Initilizers of custom Controlelrs
        views()
        self.view.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)

        
   }


    
    //=============================//=============================//=============================
func views()
{
    var statusBar = UIApplication.sharedApplication().statusBarFrame
    var statusbarHeight = statusBar.height
    
    //=========================   local variables
    var vWidth = screenWidth
    var vHeight = screenHeight/10
    var x:CGFloat = 0
    var y:CGFloat = statusbarHeight
    
    //============================================================================////////////////////////
    //=========================   On load Views
    y =  statusbarHeight
    //navigation View
    navView = UIView(frame: CGRectMake(x, y, vWidth, vHeight))
    navView.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    println("Navigation Height: \(vHeight)")
    
    y += vHeight
   
    //=========================   Page View
    pageView = PagesViewController()
    pageView.view.frame = CGRectMake(x, y, vWidth, 3.75 * vHeight)
    self.presentViewController(pageView, animated: false, completion: nil)
    println("pageView height is \(3.75 * vHeight)")
    
    y += (3.75 * vHeight)

    //=========================   Ads view
    var adsView = AdsTableViewController()
    adsView.rowHeight = (3.75 * vHeight)/2
    adsView.rowWidth = vWidth
    adsView.view.frame = CGRectMake(x, y, vWidth, (5.25 * vHeight))
    self.presentViewController(adsView, animated: false, completion: nil)

    println("Ads Height: \(5.25 * vHeight)")
    
    //=========================   Menu view
    menuVC = MenuViewController()
    menuVC.view.frame = CGRectMake(0, screenHeight, screenWidth, 0)
    
    
    
    
    //============================================================================////////////////////////
    //=========================   Navigation Buttons
    var navBtnWidths = navView.bounds.width/12
    var navBtnHeights = navView.bounds.height/2
    var navBtnsSpacing = navView.bounds.height/4
    
    x = navBtnsSpacing
    y = navBtnsSpacing
    btnMenu = UIButton(frame: CGRectMake(x, y, navBtnWidths, navBtnHeights))
    btnMenu.setImage(UIImage(named: "Menu"), forState: UIControlState.Normal)
    btnMenu.addTarget(self, action: "showMenu", forControlEvents: UIControlEvents.TouchUpInside)
    
    x = navView.bounds.width - (navBtnWidths + navBtnsSpacing)
    
    btnNotification = UIButton(frame: CGRectMake(x, y, navBtnWidths, navBtnWidths))
    btnNotification.setImage(UIImage(named: "Notification"), forState: UIControlState.Normal)
    
    x -=  (navBtnWidths + (2 * navBtnsSpacing))
    
    btnSearch = UIButton(frame: CGRectMake(x, y, navBtnWidths, navBtnWidths))
    btnSearch.setImage(UIImage(named: "Search"), forState: UIControlState.Normal)
    
    
    
    //============================================================================////////////////////////
    //Adding Views to Self View
    self.view.addSubview(navView)
        navView.addSubview(btnMenu)
        navView.addSubview(btnNotification)
        navView.addSubview(btnSearch)
    self.view.addSubview(pageView.view)
    self.view.addSubview(adsView.view)
    }
    
    
    //==========================//=========================//=========================

    
    func showMenu()
    {
        
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.allZeros, animations: { self.menuVC.view.frame = CGRectMake(0, self.screenHeight/2, self.screenWidth, self.screenHeight/2)}, completion: nil)
      //  self.addChildViewController(menuVC)
        self.view.addSubview(menuVC.view)

        var x = UIScreen.mainScreen().bounds.width/40
        var y = UIScreen.mainScreen().bounds.height/40
        homeVC.view.frame = CGRectMake(x, y, x * 38, y * 38)
        
        homeVC.pageView.view.userInteractionEnabled = false
        homeVC.navView.userInteractionEnabled = false
    }
    func show()
    {
    
        self.presentViewController(menuVC, animated: false, completion: nil)

    }
    
}
