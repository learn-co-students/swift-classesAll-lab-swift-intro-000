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
        if inFlight == true {
            altitude += maxAltitude * 0.20
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            
            decelerate()
        }
    }
    
    override func dive() {
        if inFlight == true {
            altitude -= maxAltitude * 0.20
            if altitude < 0 {
                altitude = 0
            }
            
            accelerate()
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2.0
        }
    }
}
