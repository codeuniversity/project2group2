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
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        costInput.keyboardType = UIKeyboardType.numberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
