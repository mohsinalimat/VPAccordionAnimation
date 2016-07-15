//
//  ViewController.swift
//  VPAccordionAnimationExample
//
//  Created by Varun on 23/06/16.
//  Copyright © 2016 VPM. All rights reserved.
//

import UIKit

class ViewController: VPAccordionAnimationViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        edgesForExtendedLayout = .None
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController1 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController2 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController3 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController4 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController5 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController6 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController7 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        let viewController8 = storyboard.instantiateViewControllerWithIdentifier("sampleVCId")
        
        createAccordionDataForIndexPaths([NSIndexPath(forRow: 0, inSection: 0), NSIndexPath(forRow: 1, inSection: 0), NSIndexPath(forRow: 2, inSection: 0), NSIndexPath(forRow: 3, inSection: 0), NSIndexPath(forRow: 4, inSection: 0), NSIndexPath(forRow: 5, inSection: 0), NSIndexPath(forRow: 6, inSection: 0), NSIndexPath(forRow: 7, inSection: 0)], withViewOrControllerData: [viewController1, viewController2, viewController3, viewController4, viewController5, viewController6, viewController7, viewController8])

        
        tableView.registerNib(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "SampleTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Override necessary delegate or datasource as needed. Else default functionality will be implemented.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SampleTableViewCell") as! SampleTableViewCell
        cell.displayLabel?.text = "Row \(indexPath.row + 1)"
        
        return cell
    }
}