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
        return altitude > 0 && super.speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            altitude = maxAltitude / 10
            speed = maxSpeed / 10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            let tempAlt = maxAltitude / 10
            if altitude + tempAlt <= maxAltitude {
                altitude += tempAlt
            } else {
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    
    func dive() {
        if inFlight {
            let tempAlt = maxAltitude / 10
            if altitude - tempAlt >= 0 {
                altitude -= tempAlt
            } else {
                altitude = 0
            }
            super.accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            if heading > 360 {
                heading -= 360
            }
            speed = speed - (speed / 10)
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            if heading < 0 {
                heading += 360
            }
            speed = speed - (speed / 10)
        }
    }
}






















