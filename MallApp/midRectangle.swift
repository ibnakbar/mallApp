//
//  midRectangle.swift
//  MallApp
//
//  Created by PanaCloud on 9/26/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class midRectangle: UIView {

    override func drawRect(rect: CGRect)
    {
        var ctx:CGContextRef = UIGraphicsGetCurrentContext();
        CGContextBeginPath(ctx);
        
                CGContextMoveToPoint   (ctx, CGRectGetMaxX(rect), CGRectGetMinY(rect)); // Top Right
                CGContextAddLineToPoint(ctx, CGRectGetMidX(rect), CGRectGetMidY(rect));  //Mid left
                CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMaxY(rect));  //Bottom Right
        
        CGContextClosePath(ctx);
        CGContextSetFillColorWithColor(ctx, UIColor.redColor().CGColor)
        CGContextFillPath(ctx);
    }
    


}
