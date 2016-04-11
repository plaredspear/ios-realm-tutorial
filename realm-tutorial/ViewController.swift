//
//  ViewController.swift
//  realm-tutorial
//
//  Created by Youngsoo Lim on 4/5/16.
//  Copyright © 2016 example. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UITableViewController {
    @IBOutlet var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let realm = try! Realm()
        let books = realm.objects(Book)
        
        return books.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let realm = try! Realm()
        let books = realm.objects(Book)
        
        let row = books[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell") as UITableViewCell!
        cell.textLabel?.text = row.title
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    @IBAction func addText(sender: AnyObject) {
        if let text = textInput.text {
            let newBook = Book()
            newBook.title = text
            
            let realm = try! Realm()
            
            try! realm.write {
                realm.add(newBook)
            }
            
            textInput.text = ""
        }
        
        self.tableView.reloadData()
    }
}

