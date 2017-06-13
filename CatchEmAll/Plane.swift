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
        
        get {
            
            if altitude > 0 && speed > 0 {
                
                return true
                
            }
            
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if inFlight != true {
            altitude += 0.1 * maxAltitude
            speed += 0.1 * maxSpeed
        }
    }
    
    func land() {
        altitude = 0
        speed = 0
    }
    
    func climb() {
        if inFlight != false {
            altitude += 0.1 * maxAltitude
            decelerate()
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            if speed < 0 {
                speed = 0
            }
        }
    }
    
    func dive() {
        if inFlight != false {
            altitude -= 0.1 * maxAltitude
            accelerate()
            if altitude < 0 {
                altitude = 0
            }
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    
    func bankRight() {
        if inFlight != false {
            heading += 45
            speed *= 0.9
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight != false {
            heading -= 45
            speed *= 0.9
            if heading < 0 {
                heading += 360
            }
        }
    }
    
        
}
