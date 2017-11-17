//
//  ViewController4.swift
//  FairShare
//
//  Created by Robin Stöhr on 14.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    
    private var costs:[Float]?
    var passedData3 = [""];
    var passedData5 = [""];
    
    
    @IBOutlet weak var costTableView: UITableView!
    

    
    
    
    public var passengerEnd = [""]
    public var passengerMinutes = Array<Float>()
    public var passengerDistances = Array<Float>()
    
    
    var psg1Name: String!;
    var psg2Name: String!;
    var psg3Name: String!;
    var psg4Name: String!;
    var psg5Name: String!;
    var psg6Name: String!;
    var psg7Name: String!;
    var psg8Name: String!;
    
    var psg1Cost = Float()
    var psg2Cost = Float()
    var psg3Cost = Float()
    var psg4Cost = Float()
    var psg5Cost = Float()
    var psg6Cost = Float()
    var psg7Cost = Float()
    var psg8Cost = Float()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("---------")
        print(passengerEnd)
        
        
//        costTableView.delegate = self
//        costTableView.dataSource = self
        
//        psg1Name = passengerEnd[0];
//        psg2Name = passengerEnd[1];
//        psg3Name = passengerEnd[2];
//        psg4Name = passengerEnd[3];
//        psg5Name = passengerEnd[4];
//        psg6Name = passengerEnd[5];
//        psg7Name = passengerEnd[6];
//        psg8Name = passengerEnd[7];
        
        let values = Values(m: passengerMinutes, d: passengerDistances);
        let calculator = FairCalculator ();
        self.costs = calculator.doJob (values: values);

    }

//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return passengerEnd.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell3 = costTableView.dequeueReusableCell(withIdentifier: "cell3")
//
//        cell3?.textLabel?.text = passengerEnd[indexPath.row]
//        var text = "";
//        if(self.costs != nil) {
//            text = "\(self.costs![indexPath.row])"
//        }
//        print(text)
//        cell3?.detailTextLabel?.text = text
//
//        return cell3!
//    }
    

}
