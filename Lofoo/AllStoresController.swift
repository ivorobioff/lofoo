//
//  StoreListController.swift
//  Lofoo
//
//  Created by Igor Vorobiov on 12/28/15.
//  Copyright © 2015 Igor Vorobiov. All rights reserved.
//

import UIKit

class AllStoresController: UITableViewController {
    
    var stores: [[String:String]] = [
        ["name": "Fidesco", "location": "123 Miorita"],
        ["name": "Nr.1", "location": "28 Ion Creanga"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .Add,
            target: self,
            action: "addStore"
        )
        
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    func addStore(){
        
        UIView.animateWithDuration(0.2) { () -> Void in
            self.splitViewController!.preferredDisplayMode = .PrimaryHidden
            self.splitViewController!.preferredDisplayMode = .Automatic
        }
        
        self.performSegueWithIdentifier("toAddStore", sender: self)
        
    }
    
    @IBAction func cancelAddStore(sender: UIStoryboardSegue){}

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("storeCell", forIndexPath: indexPath)
        
        let item = stores[indexPath.row];
        
        cell.textLabel?.text = item["name"];
        cell.detailTextLabel?.text = item["location"]
        
        return cell
    }
}
