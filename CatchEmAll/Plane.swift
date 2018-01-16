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
        return altitude > 0 && speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            speed = (1/10)*maxSpeed
            altitude = (1/10)*maxAltitude
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            if altitude + (1/10) * maxAltitude < maxAltitude {
                altitude = altitude + (1/10) * maxAltitude
            } else {
                altitude = maxAltitude
            }
            decelerate()
        }
    }
    
    func dive() {
        if inFlight {
            if altitude - (1/10) * maxAltitude > 0 {
                altitude = altitude - (1/10) * maxAltitude
            } else {
                altitude = 0
            }
            accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
            speed = speed - speed * (1/10)
            if speed != 0 {
                heading = (heading + 45).truncatingRemainder(dividingBy: 360)
            }
        }
    }
    
    func bankLeft() {
        speed = speed - speed * (1/10)
        if speed != 0 {
            if (heading - 45).truncatingRemainder(dividingBy: 360) < 0 {
                heading = 360 - (heading - 45).truncatingRemainder(dividingBy: 360)
            } else {
                heading = (heading - 45).truncatingRemainder(dividingBy: 360)
            }
        }
    }
}
