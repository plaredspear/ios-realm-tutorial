//
//  ViewController.swift
//  realm-tutorial
//
//  Created by Youngsoo Lim on 4/5/16.
//  Copyright © 2016 example. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    @IBOutlet var textInput: UITextField!
    
    var array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        array.append("WOWO")
        array.append("WOWO2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = self.array[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell") as UITableViewCell!
        cell.textLabel?.text = row
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    @IBAction func addText(sender: AnyObject) {
        if let text = textInput.text {
            array.append(text)
            textInput.text = ""
        }
        
        self.tableView.reloadData()
    }
}

