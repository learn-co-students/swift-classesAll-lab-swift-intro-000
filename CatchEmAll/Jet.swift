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
            altitude = altitude + maxAltitude*(1/5)
            if altitude > maxAltitude{
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    
    override func dive() {
        if inFlight {
            altitude = altitude - maxAltitude*(1/5)
            if altitude < 0{
                altitude = 0
            }
            super.accelerate()
        }

    }
    
    func afterburner() {
        
        if super.speed == super.maxSpeed{
            super.speed = super.maxSpeed * 2
        }
    }
    
    
}

