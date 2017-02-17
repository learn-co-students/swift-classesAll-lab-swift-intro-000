//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb(){
        
        if inFlight {
            if altitude + maxAltitude/5 > maxAltitude {
                altitude = maxAltitude
                decelerate()
            } else {
                altitude += maxAltitude/5
                decelerate()
            }
            
        }
    }
    
    override func dive() {
        
        if inFlight {
            if altitude - maxAltitude/5 <= 0 {
                altitude = 0
                accelerate()
            } else {
                altitude -= maxAltitude/5
                accelerate()
            }
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = 2*maxSpeed
        }
    }
}
