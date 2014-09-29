//
//  adsScrollView.swift
//  MallApp
//
//  Created by PanaCloud on 9/26/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class adsScrollView: UIViewController {

    var bounds:CGRect!
    var width:CGFloat!
    var height:CGFloat!
    
    var scrollView:UIScrollView!
    
    var firstView:UIView!
    var fvLeftRectangle:UIImageView!
    var midtriangle:UIView!
    var fvRightRectangle:UIImageView!
    
    var secondView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        width = bounds.width
        height = bounds.height
        
        var screenRect = self.bounds
        var bigRect = screenRect
            bigRect.size.width *= 2.0
        
        scrollView = UIScrollView(frame: CGRectMake(0, 0, self.bounds.width, self.bounds.height))
        scrollView.contentSize = bigRect.size
        scrollView.pagingEnabled = true
        
        //FirstView
        firstView = UIView(frame: screenRect)
        firstView.backgroundColor = UIColor.redColor()
        
        //Left Half View of First View
        fvLeftRectangle = UIImageView(frame: CGRectMake(0, 0, self.width/2, self.height))
        fvLeftRectangle.image = UIImage(named: "lion1.jpg")
        
        //Mid First View Triangle
        midtriangle = midRectangle()
        var temp = self.height/4
        var trX = self.width/2 - temp
        var trY = self.height/2 - temp/2
        var trWidth = temp
        var trHeight = temp
                midtriangle.frame = CGRectMake(trX, trY, trWidth, trHeight)
        midtriangle.backgroundColor = UIColor.clearColor()
        
        //Right Half View of First View
        fvRightRectangle = UIImageView(frame: CGRectMake(self.width/2, 0, self.width/2, self.height))
        fvRightRectangle.image = UIImage(named: "lion2.jpg")
        
        //second View
        screenRect.origin.x = screenRect.size.width
        secondView = UIView(frame: screenRect)
        secondView.backgroundColor = UIColor.yellowColor()
       
        self.view.addSubview(scrollView)
           scrollView.addSubview(firstView)
                 firstView.addSubview(fvLeftRectangle)
                 firstView.addSubview(fvRightRectangle)
                 firstView.addSubview(midtriangle)
        scrollView.addSubview(secondView)
             }
    

    
}




