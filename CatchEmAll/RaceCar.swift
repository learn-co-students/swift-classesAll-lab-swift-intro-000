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
    
    init(name: String, weight:Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed + (0.2 * maxSpeed) <= maxSpeed {
            speed += 0.2 * maxSpeed 
        }
        else {
            goFast()
        }
    }
    
    override func decelerate() {
        if speed - (0.2 * maxSpeed) >= 0.0 {
            speed -= 0.2 * maxSpeed
        }
        else {
            halt()
        }
    }
    
    func driftRight() {
        if speed != 0.0 {
            heading = (heading + 90.0).headingMod360
            speed -= speed * 0.25
        }
    }
    
    func driftLeft() {
        if speed != 0.0 {
            heading = (heading - 90.0).headingMod360
            speed -= speed * 0.25
        }
    }
}
