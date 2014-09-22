//
//  DiscountViewController.swift
//  mallApp
//
//  Created by PanaCloud on 9/19/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class DiscountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func btnBack(sender: AnyObject) {
      //  self.navigationController?.popToRootViewControllerAnimated(true)
  self.navigationController?.popViewControllerAnimated(true)
    
    }
    

}
