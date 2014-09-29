//
//  ViewController.swift
//  Swift Pages
//
//  Created by Clayton McIlrath on 6/19/14.
//  Copyright (c) 2014 Unicorn Ltd. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    var backgroundImageView : UIImageView!
    
    var pageIndex : Int = 0
    var imageFile : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView = UIImageView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height))
        self.backgroundImageView.image = UIImage(named: self.imageFile)
        self.view.addSubview(backgroundImageView)
        
    }

    
    
}

