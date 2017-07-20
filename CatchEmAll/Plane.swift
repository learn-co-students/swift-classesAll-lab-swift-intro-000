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
        if speed > 0 && altitude > 0 {
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            speed = 1/10 * maxSpeed
            altitude = 1/10 * maxAltitude
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            altitude = altitude + 1/10 * maxAltitude
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            self.decelerate()
            if speed < 0 {
                speed = 0
            }
        }
    }
    
    func dive() {
        if inFlight {
            altitude = altitude - 1/10 * maxAltitude
            if altitude < 0 {
                altitude = 0
            }
            self.accelerate()
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading = heading + 45
            speed = speed - 1/10 * speed
            if heading > 360 {
                heading = heading - 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading = heading - 45
            speed = speed - 1/10 * speed
            if heading < 0 {
                heading = 360 + heading
            }
        }
    }
}
