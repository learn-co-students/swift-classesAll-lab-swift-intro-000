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
        if inFlight {
            if speed > maxSpeed / 10  {
                if altitude >= maxAltitude * 0.8 {
                    altitude = maxAltitude
                    
                    
                } else {
                    altitude += maxAltitude / 5
                }
                
                deccelerate()
                
            } else {
                land()
            }
        }

    }
    
    override func dive() {
        if inFlight {
            if altitude > maxAltitude / 5 {
                accelerate ()
                altitude -= maxAltitude * 0.2
                
            } else {
                altitude = 0.0
                accelerate()
            }
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
