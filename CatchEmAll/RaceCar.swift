//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String] = []
    init(driver: String, sponsors: [String]) {
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
        
        self.driver = driver
        self.sponsors = sponsors
        
 
    }
    
    override func accelerate() {
        if speed < maxSpeed/10 {
            speed += maxSpeed/5
        } else {
            speed = maxSpeed
        }
    }
    
    override func decelerate() {
        let incriment = maxSpeed/5
        if speed < incriment {
            speed = 0
        } else {
            speed -= incriment
        }
    }
    
    func driftRight() {
        let increment = speed/4
        speed -= increment
        heading += 90
        if heading > 360 {
            heading -= 360
        }
    }
    
    func driftLeft() {
        let increment = speed/4
        speed -= increment
        heading -= increment
        heading -= 90
        if heading < 0 {
            heading += 360
        }
    }
}

/*
 Next, implement a RaceCar class in RaceCar.swift. This class should inherit from Car and add two new properties:
 A constant String named driver
 A variable [String] named sponsors
 This class should also implement an initializer that takes eight parameters:
 A String called name
 A Double called weight
 A Double called maxSpeed
 A Transmission called transmission
 An Int called cylinders
 A Double called milesPerGallon
 A String called driver
 A [String] called sponsors
 The initializer should assign the driver and sponsors parameters to the appropriate properties, then call the superclass's initializer with the remaining parameters.
 The RaceCar class should also override two of Vehicle's methods:
 accelerate() should increase the race car's speed by ⅕ (instead of ⅒).
 decelerate() should decrease the race car's speed by ⅕ (instead of ⅒).
 The RaceCar class should also add two new methods, which take no parameters and return no values:
 driftRight(), which increases the race car's heading by 90, but only decreases the speed by ¼ of its current speed. The race car cannot drift if it is not moving at all.
 driftLeft(), which decreases the race car's heading by 90, but only decreases the speed by ¼ of its current speed. The race car cannot drift if it is not moving at all.
 Both cases should handle out of range heading values the same as turnRight() and turnLeft().
 
 */
