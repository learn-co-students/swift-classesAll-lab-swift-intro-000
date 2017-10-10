//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    override func climb() {
        if(inFlight && (altitude + maxAltitude/5) <= maxAltitude) {
            altitude += maxAltitude/5;
            decelerate()
        } else if(inFlight) {
            altitude = maxAltitude;
            decelerate();
        }
    }
    
    override func dive() {
        if(inFlight && (altitude - maxAltitude/5) >= 0) {
            altitude -= maxAltitude/5;
            accelerate()
        } else if(inFlight) {
            altitude = 0;
            accelerate();
        }
    }
    
    func afterburner() {
        if(speed == maxSpeed) {
            speed = maxSpeed * 2;
        }
    }
}
