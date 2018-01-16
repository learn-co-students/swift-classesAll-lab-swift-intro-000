//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Racecar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed + (1/5) * maxSpeed < maxSpeed {
            speed = speed + (1/5) * maxSpeed
        }
    }
    
    override func decelerate() {
        if speed - (1/5) * maxSpeed < 0 {
            speed = speed - (1/5) * maxSpeed
        }
    }
    
    func driftRight() {
        speed = speed - speed * (1/4)
        if speed != 0 {
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
        }
    }
    
    func driftLeft() {
        speed = speed - speed * (1/4)
        if speed != 0 {
            if (heading - 90).truncatingRemainder(dividingBy: 360) < 0 {
                heading = 360 - (heading - 90).truncatingRemainder(dividingBy: 360)
            } else {
                heading = (heading - 90).truncatingRemainder(dividingBy: 360)
            }
        }
    }
}
