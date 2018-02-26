//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
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
        speed = 0
    }
    
    func accelerate() {
        if speed + maxSpeed / 10 < maxSpeed {
            speed += maxSpeed / 10
        } else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        if self.speed - (maxSpeed / 10) > 0 {
            self.speed -= maxSpeed/10
        } else {
            self.speed = 0
        }
    }
    
    func turnRight() {
        if speed > 0 {
            heading += 90
            speed = speed / 2
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading -= 90
            speed = speed / 2
            if heading < 0 {
                heading += 360
            }
        }
    }
}

enum Transmission {
    case Automatic
    case Manual
}
