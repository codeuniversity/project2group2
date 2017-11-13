//
//  ViewController2.swift
//  FairShare
//
//  Created by Robin Stöhr on 09.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    //  var list = ["Buy milk", "run 5 miles", "Get Peter", "Do something"]
    var passengers2 = [""]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passengers2.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell2")
        cell2.textLabel?.text = passengers2[indexPath.row]
        
        return (cell2)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            self.passengers2.remove(at: indexPath.row)
            print("Hello its working")
            self.myTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}
