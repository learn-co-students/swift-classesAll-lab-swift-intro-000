//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    var name: String
    var weight: Double
    var maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    func goFast() {
        self.speed = maxSpeed
    }
    func halt() {
        self.speed = 0
    }
    func accelerate() {
        let increase = self.maxSpeed * 0.1
        if !(self.speed + increase >= self.maxSpeed) {
            self.speed += increase
        }
    }
    func decelerate() {
        let decrease = self.maxSpeed * 0.1
        if !(self.speed - decrease >= 0) {
            self.speed -= decrease
        }
    }
    func turnRight() {
        if self.speed > 0 {
            self.heading += 90
            if self.heading > 360 {
                self.heading -= 360
            }
            self.speed /= 2
        }
    }
    func turnLeft() {
        if self.speed > 0 {
            self.heading -= 90
            if self.heading < 0 {
                self.heading += 360
            }
            self.speed /= 2
        }
        
    }
}

enum Transmission {
    case Automatic
    case Manual
}
