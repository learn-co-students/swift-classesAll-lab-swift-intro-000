//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        guard (inFlight) else { return; }
        
        altitude += maxAltitude / 5;
        
        if (altitude > maxAltitude) {
            altitude = maxAltitude;
        }
        
        decelerate();
    }
    
    override func dive() {
        guard (inFlight) else { return; }
        
        altitude -= maxAltitude / 5;
        
        if (altitude < 0) {
            altitude = 0;
        }
        
        accelerate();
    }
    
    func afterburner() {
        guard (speed == maxSpeed) else { return; }
        
        speed = maxSpeed * 2;
    }
}
