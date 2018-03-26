//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double
    var inFlight: Bool {
        if altitude > 0.0 && speed > 0.0 {
            return true
        }
        else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            speed = maxSpeed * 0.1
            altitude = maxAltitude * 0.1
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            if (altitude + (0.1 * maxAltitude)) <= maxAltitude {
                decelerate()
                altitude += 0.1 * maxAltitude
                
            }
            else if (altitude + (0.1 * maxAltitude)) > maxAltitude {
                altitude = maxAltitude
                decelerate()
            }
        }
    }
    
    func dive() {
        if inFlight {
            if (altitude - (0.1 * maxAltitude)) >= 0 {
                accelerate()
                altitude -= 0.1 * maxAltitude
            }
            else if (altitude - (0.1 * maxAltitude)) < 0.0 {
                altitude = 0.0
                accelerate()
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            if speed != 0.0 {
                heading = (heading + 45.0).headingMod360
                speed -= speed * 0.1
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            if speed != 0.0 {
                heading = (heading - 45.0).headingMod360
                speed -= speed * 0.1
            }
        }
    }

}
