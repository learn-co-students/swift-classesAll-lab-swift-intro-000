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
            }
            
            if altitude < 0.0 {
                altitude = 0.0
            }
        }
    }
    var inFlight: Bool {
        if altitude > 0.0 && speed > 0.0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        guard !inFlight else { return }
        speed = maxSpeed/10
        altitude = maxAltitude/10
    }
    
    func land() {
        speed = 0.0
        altitude = 0.0
    }
    
    func climb() {
        altitude += altitude/10
        speed -= speed/10
    }
    
    func dive() {
        altitude -= altitude/10
        speed += speed/10

    }
    
    func bankRight() {
        heading += 45.0
        speed -= speed/10
    }
    
    func bankLeft() {
        heading -= 45.0
        speed -= speed/10
    }
}
