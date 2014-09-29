//
//  storeViewController.swift
//  MallApp
//
//  Created by PanaCloud on 9/26/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit


class storeViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
   
    var collection:UICollectionView!
       override func viewDidLoad() {
        super.viewDidLoad()
        var layout = UICollectionViewFlowLayout()
        var size = self.view.bounds.width/3 - 4
        layout.itemSize = CGSize(width: size, height: size)
        
        collection = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collection.delegate = self
        collection.dataSource = self
        collection.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collection.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(collection)

    }
    
    func remove()
    {
          self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 63
    }
    
    func collectionView(collectionView: UICollectionView, numberOfSectionsInCollectionView section: Int) -> Int {
        
        return 2
    }

    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as UICollectionViewCell
        
        var img = UIImageView(frame: CGRectMake(0, 0, cell.bounds.width, cell.bounds.height))
        img.image = UIImage(named: "lion1.jpg")
        cell.addSubview(img)
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        var obj = storeDetailsController()
        obj.modalPresentationStyle = UIModalPresentationStyle.Custom
        self.presentViewController(obj, animated: true, completion: nil)
        

    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 3, 0, 3)

    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 3
    }
    

  
    
}
