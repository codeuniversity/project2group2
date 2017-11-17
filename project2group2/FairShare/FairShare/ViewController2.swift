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
    
    
    var psgTextField: UITextField?;
    var emTextField: UITextField?;
    
    
    var passengers2 = [""];
    var passengers3 = [""];
    
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
        
        status = true
//        
//        let firstVC = ViewController()
//        passengers2 = firstVC.passengers
        
        print(passengers2)
        print("-----------")
        print(passengers3)
        
        
        
//        let firstVC = ViewController()
//        passengers2 = firstVC.passengers
//        print(firstVC.passengers)
//        print(passengers2)
        
//        self.passengers3 = passedData3 ;
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if (segue.identifier == "segue3") {
            let destinationVC = segue.destination as! ViewController3;
            
            destinationVC.passedData = labelHour.text;
            
            let destinationVC2 = segue.destination as! ViewController3;
            
            destinationVC2.passedData2 = labelMinute.text;
            
//            destinationVC.passedData4 = passengers3;
        }
        
        if let destinationVC3 = segue.destination as? ViewController3 {
            destinationVC3.passengers4 = passengers3
        }
    }
}

