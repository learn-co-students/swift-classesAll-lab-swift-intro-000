//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    var maxAltitude: Double
    var altitude: Double
    var inFlight: Bool {
        return altitude > 0 && speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if inFlight { return }
        speed = maxSpeed / 10
        altitude = maxAltitude / 10
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if !inFlight { return }
        altitude += maxAltitude / 10
        decelerate()
        if altitude > maxAltitude { altitude = maxAltitude }
    }
    
    func dive() {
        if !inFlight { return }
        altitude -= maxAltitude / 10
        accelerate()
        if altitude < 0 { altitude = 0 }
    }
    
    func bankRight() {
        if !inFlight { return }
        heading += 45
        speed *= 0.9
        if heading > 360 { heading -= 360 }
    }
    
    func bankLeft() {
        if !inFlight { return }
        heading -= 45
        speed *= 0.9
        if heading < 0 { heading += 360 }
    }
}
