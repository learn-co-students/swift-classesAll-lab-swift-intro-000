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
        var result = Bool()
        if altitude > 0 && speed > 0 {
            result = true
        }
        return result
    }
    
    var altitudeUpInterval: Double {
        return maxAltitude / 10
    }
    
    var speedUpInterval: Double {
        return maxSpeed / 10
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double, altitude: Double = 0.0) {
        self.maxAltitude = maxAltitude
        self.altitude = altitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if altitude == 0 {
            speed = speedUpInterval
            altitude = altitudeUpInterval
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if altitude != 0 {
            altitude += altitudeUpInterval
            decelerate()
            if speed < 0 {
                speed = 0
            }
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
    }
    
    func dive() {
        if altitude != 0 {
            altitude -= altitudeUpInterval
            accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func bankRight() {
        if altitude != 0 {
            heading += 45
            speed -= speed * (1/10)
        }
        if heading > 360 {
            heading -= 360
        }
    }
    
    func bankLeft() {
        if altitude != 0 {
            heading -= 45
            speed -= speed * (1/10)
        }
        if heading < 0 {
            heading += 360
        }
    }
}
