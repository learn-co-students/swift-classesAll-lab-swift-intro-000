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
        var isItFlying = false
        if altitude > 0 && speed > 0 {
            isItFlying = true
        }
        return isItFlying
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        altitude = 0
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            if altitude >= maxAltitude/10 * 9 {
                altitude = maxAltitude
                decelerate()
            } else {
                decelerate()
                altitude += maxAltitude/10
            }
        }
    }
    
    func dive() {
        if inFlight {
            if altitude <= maxAltitude/10 {
                altitude = 0
                accelerate()
            } else {
                accelerate()
                altitude -= maxAltitude/10
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            speed -= speed/10
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed -= speed/10
            if heading < 0 {
                heading = 360 + heading
            }
        }
    }
}
