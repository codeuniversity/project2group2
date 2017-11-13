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
    
    @IBOutlet weak var labelMinute: UILabel!
    @IBOutlet weak var labelHour: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    
    weak var timer: Timer?
    var startTime: Double = 0
    var time: Double = 0
    var elapsed: Double = 0
    var status: Bool = false
    
    var psgTextField: UITextField?
    var emTextField: UITextField?
    
    
    //  var list = ["Buy milk", "run 5 miles", "Get Peter", "Do something"]
   public var passengers2 = [""]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passengers2.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell2")
        cell2.textLabel?.text = passengers2[indexPath.row]
        
        return (cell2)
    }
    
    @objc func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            let alertController = UIAlertController(title: "Do you really want to leave?",
                                                    message: nil,
                                                    preferredStyle: .alert)
            
            
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            alertController.addAction(UIAlertAction(title: "Leave", style: .default, handler: { action in self.passengers2.remove(at: indexPath.row)
                self.myTableView.deleteRows(at: [indexPath], with: .automatic)
            } ))
            
            self.present(alertController, animated: true)
            
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTime = Date().timeIntervalSinceReferenceDate - elapsed
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        // Set Start/Stop button to true
        status = true
        
    }
    
    @objc func updateCounter() {
        
        // Calculate total time since timer started in seconds
        time = Date().timeIntervalSinceReferenceDate - startTime
        
        // Calculate minutes
        let minutes = UInt8(time / 60.0)
        time -= (TimeInterval(minutes) * 60)
        
        // Calculate seconds
        let hours = UInt8(time / 3600)
        time -= TimeInterval(hours)
        
        let seconds = UInt8(time)
        time -= TimeInterval(seconds)
        
        // Format time vars with leading zero
        let strMinutes = String(format: "%02d", minutes)
        let strHour = String(format: "%02d", hours)
        let strSecond = String(format: "%02d", seconds)
        
        // Add time vars to relevant labels
        labelMinute.text = strMinutes
        labelHour.text = strHour
        labelSecond.text = strSecond
        
    }
    
    
    }
