//
//  Values.swift
//  FairShare
//
//  Created by Robin Stöhr on 15.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//

import UIKit

class Values: NSObject {
    private var minutes : Array<Float>;
    private var distances : Array<Float>;

    init (m : Array<Float>, d : Array<Float>) {
        self.minutes = m;
        self.distances = d;
    }
    
    func getMinutes () -> Array<Float> {
        return minutes;
    }
    
    func getDistances () -> Array<Float> {
        return distances;
    }
}
