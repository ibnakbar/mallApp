//
//  adsDetailsViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/26/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class adsDetailsViewController: UIViewController {

    
    var btnText:String!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        var btnBack:UIButton!
        btnBack = UIButton(frame: CGRectMake(30, 30, 80, 30))
        btnBack.setTitle(btnText, forState: UIControlState.Normal)
        btnBack.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        btnBack.addTarget(self, action: "remove", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnBack)
        
    }
    
    func remove()
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
