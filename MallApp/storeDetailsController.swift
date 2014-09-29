//
//  storeDetailsController.swift
//  MallApp
//
//  Created by PanaCloud on 9/27/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class storeDetailsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        var btnBack:UIButton!
        btnBack = UIButton(frame: CGRectMake(0, self.view.bounds.height/2 , 100, 50))
        btnBack.setTitle("ColelctionDetails", forState: UIControlState.Normal)
        btnBack.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        btnBack.addTarget(self, action: "remove", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnBack)
        
    }
    
    func remove()
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
