//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic, Manual
}

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double {
        didSet {
            if speed > maxSpeed {
                speed = maxSpeed
            }
            
            if speed < 0.0 {
                speed = 0.0
            }
        }
    }
    var heading: Double {
        didSet {
            while heading < 0.0 {
                heading += 360.0
            }
            
            while heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
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
        let accel = maxSpeed / 10
        if speed < maxSpeed {
            speed += accel
        } else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        let decel = maxSpeed / 10
        if speed > 0.0 {
            speed -= decel
        } else {
            speed = 0.0
        }
    }
    
    func turnRight() {
        if speed > 0 {
            heading += 90
            speed = speed / 2
        }
        if heading > 360 {
            heading = heading - 360
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading -= 90
            speed = speed / 2
        }
        if heading < 0 {
            heading = heading + 360
        }
    }
}
