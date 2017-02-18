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
    var maxSpeed: Double // Changed to var for afterburner
    var speed: Double {
        didSet {
            if speed < 0 {
                speed = 0
            } else if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    var heading: Double {
        didSet {
            // heading as gone past boundry and needs
            // to be cylced back around
            while heading > 360 {
                heading -= 360
            }
            // heading has dropped below 0 boundry
            // needs to be cyled back around from 360
            while heading < 0 {
                heading += 360
            }
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        speed = 0
        heading = 0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed = speed + (maxSpeed * 0.1)
    }
    
    func decelerate() {
        speed = speed - (maxSpeed * 0.1)
    }
    
    func turnRight() {
        if speed > 0 {
            speed = speed/2
            heading += 90
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed = speed/2
            heading -= 90
        }
    }
}

enum Transmission: Int {
    case Automatic = 0
    case Manual
}
