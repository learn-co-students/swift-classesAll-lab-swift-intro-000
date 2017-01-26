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
    var altitude: Double {
        didSet {
            if altitude > maxAltitude {
                altitude = maxAltitude
            } else if altitude < 0 {
                altitude = 0
            }
        }
    }
    var inFlight: Bool {
        if altitude > 0 && speed > 0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if inFlight == false {
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
            altitude = altitude + (maxAltitude * 0.1)
            decelerate()
        }
    }
    
    func dive()  {
        if inFlight {
            altitude = altitude - (maxAltitude * 0.1)
            accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            speed = speed - (speed * 0.1)
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed = speed - (speed * 0.1)
        }
    }   
}
