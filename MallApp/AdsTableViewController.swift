//
//  AdsTableViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/25/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class AdsTableViewController:  UITableViewController {

    var rowHeight:CGFloat!
    var rowWidth:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        println("row height is asdkladfsjkladsfdjsakl \(rowHeight)")
        println("row width is asdkladfsjkladsfdjsakl \(rowWidth)")
    
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        var showdetailsGesture = UITapGestureRecognizer(target: self, action: "show")
        var tableCell = TableViewCell()
        tableCell.addGestureRecognizer(showdetailsGesture)
        

        

        return tableCell
    }
    

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return rowHeight
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var cell = self.tableView.cellForRowAtIndexPath(indexPath)
        
        var obj = adsDetailsViewController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
    }
    var i = 0
    func show()
    {
        
        var obj = adsDetailsViewController()
        obj.btnText = "New \(i++)"
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
    }
    
    

}
