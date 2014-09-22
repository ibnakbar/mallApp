//
//  SearchTableViewController.swift
//  mallApp
//
//  Created by PanaCloud on 9/20/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var items:[String] = ["Ali","Ahmed","Bilal","Bhaijan","Adil","Kamran","Ismail","Shehzad","Kashan","Ayoub","Safdar","Riaz","Waqar","Zahid","Zara","Ahmed","Bilal","Bhaijan","Adil","Kamran","Ismail","Shehzad","Kashan","Ayoub","Safdar","Riaz","Waqar","Zahid","Zara","Ahmed","Bilal","Bhaijan","Adil","Kamran","Ismail","Shehzad","Kashan","Ayoub","Safdar","Riaz","Waqar","Zahid","Zara","Ahmed","Bilal","Bhaijan","Adil","Kamran","Ismail","Shehzad","Kashan","Ayoub","Safdar","Riaz","Waqar","Zahid","Zara","Ahmed","Bilal","Bhaijan","Adil","Kamran","Ismail","Shehzad","Kashan","Ayoub","Ali","Ali","Ali","Safdar","Riaz","Waqar","Zahid","Zara"]
    var foundItems:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foundItems = items
        
        searchBar.delegate = self
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        items.removeAll(keepCapacity: true)
        
        if searchText.isEmpty
        {
            items = foundItems
        }
            
        else
        {
            searchItems(searchText)
        }
        self.tableView.reloadData()
    }
    
    
    var a:Int!
    var b:Int!
    func searchItems(text:String){
        for obj in foundItems {
            a = countElements(text)
            b = countElements(obj)
            if (a<=b)&&(obj.substringToIndex(advance(obj.startIndex, a)).lowercaseString == text.substringToIndex(advance(text.startIndex, a)).lowercaseString)
            {items.append(obj)}
        }
        
        self.tableView.reloadData()
        
    }
    
    
    
    
    
}


