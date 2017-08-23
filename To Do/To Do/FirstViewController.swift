//
//  FirstViewController.swift
//  To Do
//
//  Created by Ingmar Boddington on 23/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items: [String] = [];
    
    @IBOutlet weak var tableList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.items = UserDefaults.standard.object(forKey: "list") as! [String];
        self.tableList.reloadData();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.items = UserDefaults.standard.object(forKey: "list") as! [String];
        self.tableList.reloadData();
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell");
        cell.textLabel?.text = items[indexPath.row];
        return cell;
    }
 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            items.remove(at: indexPath.row);
            UserDefaults.standard.set(items, forKey: "list")
            self.tableList.reloadData();
        }
    }
}

