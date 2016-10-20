//
//  ViewController.swift
//  ToDoList
//
//  Created by Soham Shah on 10/19/16.
//  Copyright © 2016 Soham Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var items: [String] = ["Jello", "parks"]
    
    @IBOutlet weak var listTableView: UITableView!
    @IBAction func addItem(_ sender: AnyObject) {
        alert()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listitem") as! ItemTableViewCell
        cell.itemLabel.text = items[indexPath.row]
        return cell
        
    }

    func alert() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let add = UIAlertAction(title: "Add", style: .default) {
            (action) in
            
            self.items.append("")
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) {
            (alert) in
            
            print("Hello")
        }
        alert.addAction(add)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

