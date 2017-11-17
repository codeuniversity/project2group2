//
//  FairCalculator.swift
//  FairShare
//
//  Created by Robin Stöhr on 15.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class FairCalculator {

    init () {
    }
    
    func doJob (values: Values) -> Array<Float>{
        var preise = [Float]();
        var minutes = values.getMinutes();///so kommst du an die fahrzeiten ran.
        var distances = values.getDistances();
        
        //Hier geht die Berechnung los...
        preise.append(12);      //distances[0]+minutes[0];//hier was sinnvolles eingeben
        preise.append(47.11);
        
        preise.append(13);
        
//        preise[3] = 13;
//        
//        preise[4] = 13;
//
//        preise[5] = 13;
//
//        preise[6] = 13;
//
//        preise[7] = 13;
        
        
        
        //bis hier
        return preise;
    }
}
