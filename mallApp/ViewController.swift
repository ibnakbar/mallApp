//
//  ViewController.swift
//  mallApp
//
//  Created by PanaCloud on 9/18/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    
    
    
    
    
func add() -> UIView
{
    
    var toolBar:UIView = UIView(frame: CGRectMake(0, self.view.bounds.height-30, self.view.bounds.width, 30))

    
    var width = toolBar.bounds.width/4
    
    var btnPosition = toolBar.bounds.width/4
    
    var btnHome:UIButton = UIButton(frame: CGRectMake(0, 0, width, 30))
    btnHome.setTitle("Home", forState: UIControlState.Normal)
    btnHome.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    btnHome.backgroundColor = UIColor.whiteColor()
    btnHome.layer.borderWidth = 0.5
    btnHome.layer.borderColor = UIColor.blackColor().CGColor
    
    
    var btnFavourite:UIButton = UIButton(frame: CGRectMake(btnPosition, 0, width, 30))
    btnFavourite.setTitle("Favourite", forState: UIControlState.Normal)
    btnFavourite.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    btnFavourite.backgroundColor = UIColor.whiteColor()
    btnFavourite.layer.borderWidth = 0.5
    btnFavourite.layer.borderColor = UIColor.blackColor().CGColor
    btnFavourite.addTarget(self, action: "abcd:", forControlEvents: UIControlEvents.TouchUpInside)

    btnPosition += btnPosition
    var btnNew:UIButton = UIButton(frame: CGRectMake(btnPosition, 0, width, 30))
    btnNew.setTitle("New", forState: UIControlState.Normal)
    btnNew.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    btnNew.backgroundColor = UIColor.whiteColor()
    btnNew.layer.borderWidth = 0.5
    btnNew.layer.borderColor = UIColor.blackColor().CGColor
    
    
   // btnPosition += 50
    btnPosition += 80
    var btnSearch:UIButton = UIButton(frame: CGRectMake(btnPosition, 0, width, 30))
    btnSearch.setTitle("Search", forState: UIControlState.Normal)
    btnSearch.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    btnSearch.backgroundColor = UIColor.whiteColor()
    btnSearch.layer.borderWidth = 0.5
    btnSearch.layer.borderColor = UIColor.blackColor().CGColor
    
    
   
        toolBar.addSubview(btnHome)
        toolBar.addSubview(btnFavourite)
        toolBar.addSubview(btnNew)
        toolBar.addSubview(btnSearch)

    return toolBar
    }
    
    
    
    func abcd()
    {
        println("asfadsadfs")
      //  self.performSegueWithIdentifier("abc", sender: self)
        
        
     //   self.presentViewController(FavouriteViewController(), animated: true, completion: nil)
        
    }

  
    
}

