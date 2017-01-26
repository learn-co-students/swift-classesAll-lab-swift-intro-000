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
            altitude = altitude + (maxAltitude * 0.2)
            decelerate()
        }
    }
    override func dive() {
        if inFlight {
            altitude = altitude - (maxAltitude * 0.2)
            accelerate()
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            maxSpeed = 2 * maxSpeed
            speed = maxSpeed
            maxSpeed = maxSpeed/2 // Set back to actual
        }
    }
}
