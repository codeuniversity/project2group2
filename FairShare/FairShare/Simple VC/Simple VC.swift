//
//  Simple VC.swift
//  FairShare
//
//  Created by Robin Stöhr on 09.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class Simple_VC: UIViewController {
    
    // @IBOutlet weak var psgLabel: UILabel!
    //@IBOutlet weak var emLabel: UILabel!
    
    var psgStr: String?
    var emStr: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //   psgLabel.text = psgStr
        //   emLabel.text = emStr
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customInit(psgStr: String, emStr: String) {
        self.psgStr = psgStr
        self.emStr = emStr
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
