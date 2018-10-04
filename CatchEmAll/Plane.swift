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
    var altitude: Double = 0
    var inFlight: Bool {
        return altitude > 0 && speed > 0 ? true : false
    }
    
    init(maxAltitude: Double, name: String, weight: Double, maxSpeed: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if inFlight == false {
            altitude = 0.1 * maxAltitude
            speed = 0.1 * maxSpeed
        }
    }
    
    func land() {
        if inFlight == true {
            altitude = 0
            speed = 0
        }
    }
    
    func climb() {
        var testAltitude = altitude + 0.1 * maxAltitude
        if inFlight == true {
            if testAltitude <= maxAltitude {
                altitude += 0.1 * maxAltitude
                decelerate()
            } else {
                altitude = maxAltitude
                decelerate()
            }
        }
    }
    
    func dive() {
        var testAltitude = altitude - 0.1 * maxAltitude
        if inFlight == true {
            if testAltitude > 0 {
                altitude -= 0.1 * maxAltitude
                accelerate()
            } else {
                altitude = 0
                accelerate()
            }
        }
    }
    
    func bankRight() {
        if inFlight == true {
            heading += 45
            speed *= 0.9
            if heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
    func bankLeft() {
        if inFlight == true {
            heading -= 45
            speed *= 0.9
            if heading < 0 {
                heading += 360.0
            }
        }
    }
    
    
}
