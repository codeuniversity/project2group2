//
//  ViewController3.swift
//  FairShare
//
//  Created by Robin Stöhr on 13.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    
    @IBOutlet weak var costInput: UITextField!
    
    @IBOutlet weak var timeHour: UILabel!
    
    @IBOutlet weak var timeMinute: UILabel!
    
    var passedData: String!;
    var passedData2: String!;
    var passedData4 = [""];
    
    var passengers4 = [""];
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timeHour.text = passedData;
        self.timeMinute.text = passedData2;

        costInput.keyboardType = UIKeyboardType.numberPad
        
        print("--------------")
        print(passengers4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationVC4 = segue.destination as? ViewController4 {
            destinationVC4.passengerEnd = passengers4
        }
        
    }

}
