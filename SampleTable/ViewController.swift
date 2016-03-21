//
//  ViewController.swift
//  SampleTable
//
//  Created by PO-CHUN CHEN on 2016/3/21.
//  Copyright © 2016年 PO-CHUN CHEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurantNames = ["7-11", "Family", "OK Market", "Costco", "Apple Store", "Lativ", "H&M", "Zara", "Forever21", "Gap"]
    
    var loaderImage = ["cafelore", "barrafina", "bourkestreetbakery", "homei", "posatelier", "teakha", "wafflewolf", "royaloak", "thaicafe", "upstate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
//        var bundle = NSBundle.mainBundle()
//        var path = bundle.resourcePath
        
        cell.imageView?.image = UIImage(named: loaderImage[indexPath.row], inBundle: NSBundle.mainBundle(),
            compatibleWithTraitCollection: nil)
        
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

