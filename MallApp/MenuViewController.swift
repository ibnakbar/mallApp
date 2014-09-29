//
//  MenuViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/24/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var btnHideMenu:UIButton!
    
    //first Row buttons variables
    var btnHome:UIButton!
    var btnStore:UIButton!
    var btnFood:UIButton!
    
    //Second Row buttons variables
    var btnPromos:UIButton!
    var btnSocial:UIButton!
    var btnFavourite:UIButton!
    
    //Third Row buttons variables
    var btnCodes:UIButton!
    var btnDirection:UIButton!
    var btnSetting:UIButton!
    
    //buttons Measurements variables
    var hidebtnHeight:CGFloat!
    var hidebtnWidth:CGFloat!
    
    //Menu button color
    var menuBtnColor:UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtnColor = UIColor(red: 240/255, green: 85/255, blue: 39/255, alpha: 1)
        
        hidebtnHeight = self.view.bounds.height/25
        
       self.view = UIView(frame: CGRectMake(0, self.view.bounds.height/2, self.view.bounds.width, self.view.bounds.height/2))
        
        self.view.backgroundColor = UIColor(red: 100/255, green: 1, blue: 1, alpha: 1)
        
        addHideButton()
        menuButtons()
        println("Menu Screen Width: \(self.view.bounds.width)")
        println("Menu Screen Height: \(self.view.bounds.height)")
        
    }
    

    
    func menuButtons()
    {
        var menuBtnX:CGFloat = 0
        var menuBtnY:CGFloat = 0
        var buttonsWidth = (self.view.bounds.width - 1) / 3
        var buttonHeight = (self.view.bounds.height - (1 + hidebtnHeight)) / 3
        println("menu buttons width \(buttonsWidth)")
        println("menu buttons height \(buttonHeight)")
        
        //=========================   First Row Menu Buttons
        
        menuBtnY = hidebtnHeight
        //=================
        btnHome = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnHome.setImage(UIImage(named: "Home.png"), forState: UIControlState.Normal)
        btnHome.addTarget(self, action: "hideMenu", forControlEvents: UIControlEvents.TouchUpInside)
        btnHome.backgroundColor = menuBtnColor
        
        menuBtnX += buttonsWidth + 0.5
        btnStore = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnStore.setImage(UIImage(named: "Store.png"), forState: UIControlState.Normal)
        btnStore.addTarget(self, action: "navToStoreViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnStore.backgroundColor = menuBtnColor
        
        menuBtnX += buttonsWidth + 0.5
        btnFood = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnFood.setImage(UIImage(named: "Food.png"), forState: UIControlState.Normal)
        btnFood.addTarget(self, action: "navToFoodViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnFood.backgroundColor = menuBtnColor
        
        self.view.addSubview(btnStore)
        self.view.addSubview(btnHome)
        self.view.addSubview(btnFood)
        
        //=========================   Second Row Menu Buttons
        
        menuBtnY += buttonHeight + 0.5
        //=================
        
        menuBtnX = 0
        btnPromos = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnPromos.backgroundColor = menuBtnColor
        btnPromos.addTarget(self, action: "navToPromosViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        
        menuBtnX += buttonsWidth + 0.5
        btnSocial = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnSocial.addTarget(self, action: "navToSocialViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnSocial.backgroundColor = menuBtnColor
        
        
        menuBtnX += buttonsWidth + 0.5
        btnFavourite = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnFavourite.addTarget(self, action: "navToFavouritesViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnFavourite.backgroundColor = menuBtnColor
        
        self.view.addSubview(btnPromos)
        self.view.addSubview(btnSocial)
        self.view.addSubview(btnFavourite)
        
        //=========================   Second Row Menu Buttons
        menuBtnY += buttonHeight + 0.5
        //=================
        menuBtnX = 0
        btnCodes = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnCodes.addTarget(self, action: "navToCodesViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnCodes.backgroundColor = menuBtnColor
        
        menuBtnX += buttonsWidth + 0.5
        btnDirection = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnDirection.addTarget(self, action: "navToDirectionsViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnDirection.backgroundColor = menuBtnColor
        
        menuBtnX += buttonsWidth + 0.5
        btnSetting = UIButton(frame: CGRectMake(menuBtnX, menuBtnY, buttonsWidth, buttonHeight))
        btnSetting.addTarget(self, action: "navToSettingsViewcontroller", forControlEvents: UIControlEvents.TouchUpInside)
        btnSetting.backgroundColor = menuBtnColor

        self.view.addSubview(btnSetting)
        self.view.addSubview(btnDirection)
        self.view.addSubview(btnCodes)
        
    }
    
    func addHideButton()
    {
        btnHideMenu = UIButton(frame: CGRectMake(0, 0, self.view.bounds.width, hidebtnHeight))
        btnHideMenu.backgroundColor = UIColor.whiteColor()
        btnHideMenu.setImage(UIImage(named: "MenuWhite"), forState: UIControlState.Normal)
        btnHideMenu.addTarget(self, action: "hideMenu", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnHideMenu)
    }
    
    func hideMenu()
    {
        
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.allZeros, animations: {
            self.view.frame = CGRectMake(0, self.view.bounds.height*2, self.view.bounds.width, 0)}, completion: nil)
        
        var x = UIScreen.mainScreen().bounds.width
        var y = UIScreen.mainScreen().bounds.height
        homeVC.view.frame = CGRectMake(0, 0, x, y)
        
        homeVC.pageView.view.userInteractionEnabled = true
        homeVC.navView.userInteractionEnabled = true
    }
    
    
    //================================first line buttons actions==================================

    func navToStoreViewcontroller()
    {
        var obj = storeViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
        
    }
    
    func navToFoodViewcontroller()
    {
        var obj = foodViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
        
    }

    //===============================second line buttons actions ==================================

    func navToPromosViewcontroller()
    {
        var obj = promosViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
    }
    
    
    func navToSocialViewcontroller()
    {
        var obj = socialViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
    }

    
    func navToFavouritesViewcontroller()
    {
        var obj = favouritesViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
    }
    
    //===============================Third line  buttons actions ==================================

    func navToCodesViewcontroller()
    {
        
        var obj = codesViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)

        
    }
    func navToDirectionsViewcontroller()
    {
        var obj = directionViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)

    }
    
 
    func navToSettingsViewcontroller()
    {
        var obj = settingViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)

    }
}

