//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Transmission {
    case Automatic
    case Manual
}

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
        speed = 0.0
        heading = 0.0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        var testNewSpeed = speed + (0.1 * maxSpeed)
        if testNewSpeed <= maxSpeed {
            speed = testNewSpeed
        } else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        var testNewSpeed = speed - (0.1 * maxSpeed)
        if testNewSpeed > 0 {
            speed = testNewSpeed
        } else {
            speed = 0
        }
    }
    
    func turnRight() {
        if speed == 0.0 {
            print("car is currently not moving")
        } else {
            heading += 90
            speed *= 0.5
            if heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
    func turnLeft() {
        if speed == 0.0 {
            print("car is currently not moving")
        } else {
            heading -= 90
            speed *= 0.5
            if heading < 0.0 {
                heading += 360.0
            }
        }
    }
    
    
    
    
    
}
