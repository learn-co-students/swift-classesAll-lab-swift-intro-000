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
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    override func accelerate() {
        if self.speed < self.maxSpeed {
            self.speed += (self.maxSpeed / 5)
        }
    }
    override func decelerate() {
        self.speed -= (self.maxSpeed / 5)
        if self.speed < 0.0 {
            self.speed = 0.0
        }
    }
    
    // are out of range turns handled by original func turnRigh() turnLeft() ???
    func driftRight() {
        if self.speed > 0.0 {
            self.heading += 90
            self.speed = self.speed - (self.speed / 4)
            
            if self.speed < 0.0 {
                self.speed = 0.0
            }
        }
    }
    func driftLeft() {
        if self.speed > 0.0 {
            self.heading -= 90
            self.speed = self.speed - (self.speed / 4)
            if self.speed < 0.0 {
                self.speed = 0.0
            }
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
