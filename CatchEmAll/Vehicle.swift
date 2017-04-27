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
    var maxSpeed: Double
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
        if speed >= maxSpeed * 0.9 {
            goFast()
        } else {
            speed += maxSpeed * 0.1
        }
    }
    
    func deccelerate() {
        if speed <= maxSpeed * 0.1 {
            halt()
        } else {
            speed -= maxSpeed * 0.1
        }
    }
    
    func turnRight() {
        if speed > 0 {
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
            speed = speed / 2
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading = (360 + (heading - 90)).truncatingRemainder(dividingBy: 360)
            speed = speed / 2
        }
    }
}
