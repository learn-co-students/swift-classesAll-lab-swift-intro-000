//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case automatic, manual
}

class Vehicle {
    var name: String
    var weight: Double
    var maxSpeed: Double
    var speed: Double
    var heading: Double

    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0.0
        self.heading = 0.0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed += maxSpeed / 10
        if speed > maxSpeed { goFast() }
    }
    
    func decelerate() {
        speed -= maxSpeed / 10
        if speed < 0 { speed = 0 }
    }
    
    func turnRight() {
        if speed == 0 { return }
        heading += 90
        speed /= 2
        if heading > 360 { heading -= 360 }
    }
    
    func turnLeft() {
        if speed == 0 { return }
        heading -= 90
        speed /= 2
        if heading < 0 { heading += 360 }
    }
}
