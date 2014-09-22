
//
//  HomeTableViewController.swift
//  mallApp
//
//  Created by PanaCloud on 9/18/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit
import UIKit

class HomeTableViewController: UITableViewController {


    
    
    @IBOutlet weak var lblAdsHeading: UILabel!
    var adsHeading = ["Creative Shoe Advertisements", "New Chakra 45 model car", "New Chakra 42 model car", "New Chakra 55 model car", "New Chakra 32 model car"]
    
    var adsDescription = ["With all of the print ads in the world today, being unique tends to become a difficult task, especially for shoes. Enjoy!", "With all of the print ads in the world today, being unique tends to become a difficult task, especially for shoes. Enjoy!", "With all of the print ads in the world today, being unique tends to become a difficult task, especially for shoes. Enjoy!", "With all of the print ads in the world today, being unique tends to become a difficult task, especially for shoes. Enjoy!", "With all of the print ads in the world today, being unique tends to become a difficult task, especially for shoes. Enjoy!"]
    
    var adsDiscount = ["20% OFF", "100% OFF", "20% OFF", "100% OFF","20% OFF"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   //     self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
    }
    
    var profileView:UIView!
    
    var i:Int = 0
    var vc:UIViewController!
    @IBAction func editProfile(sender: AnyObject) {
        i++
           vc = self.storyboard!.instantiateViewControllerWithIdentifier("test") as UIViewController
        
            vc.view.backgroundColor = UIColor.greenColor()
           vc.view.tag = 11
        if !(i%2==0)
        {
     
       vc.view.frame = CGRectMake(0, 0, 160, 300);
     
        self.addChildViewController(vc)
        self.view.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
            
            
            UIView.animateWithDuration(2, animations: {self.vc.view.alpha = 0}, completion: nil)
            println("add")

        }
        else
        {
            for view:UIView in self.view.subviews as [UIView]
            {
                if view.tag == 11
                {
                    view.removeFromSuperview()
                    println("remove")
                }
            }


            
        }

    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return self.adsHeading.count
    }



    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        
        var cellWidth = cell.bounds.width
        var cellHeight = cell.bounds.height

        var img:UIImageView = UIImageView(frame: CGRectMake(0, 0, cellHeight, cellHeight))

        var lblHeading:UILabel = UILabel(frame: CGRectMake(cellHeight, 0, cellWidth - cellHeight , cellHeight/3))
        
        var lblDescription:UILabel = UILabel(frame: CGRectMake(cellHeight, cellHeight/3.5, cellWidth - cellHeight*2, 2*cellHeight/3))
            lblDescription.numberOfLines = 3
            lblDescription.font = UIFont.systemFontOfSize(9)
        
        var lblDiscount:UILabel = UILabel(frame: CGRectMake(cellWidth - cellHeight, cellHeight/10, cellHeight, cellHeight))
        
          //  cellWidth - cellHeight, 0, cellHeight, cellHeight))
            lblDiscount.numberOfLines = 2
            lblDiscount.font = UIFont.systemFontOfSize(20)
        
        
        
        lblHeading.text = self.adsHeading[indexPath.row]
        lblDescription.text = self.adsDescription[indexPath.row]
        lblDiscount.text = self.adsDiscount[indexPath.row]
        img.image = UIImage(named: "images.jpeg")
        
        
        cell.addSubview(lblHeading)
        cell.addSubview(img)
        cell.addSubview(lblDescription)
        cell.addSubview(lblDiscount)
        
   
        
        
        return cell
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
