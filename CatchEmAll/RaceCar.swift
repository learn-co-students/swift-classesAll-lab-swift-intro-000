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
    let sponsors: [String]
    
    init(name: String,
         weight: Double,
         maxSpeed: Double,
         transmission: Transmission,
         cylinders: Int,
         milesPerGallon: Double,
         driver: String,
         sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name,
                   weight: weight,
                   maxSpeed: maxSpeed,
                   transmission: transmission,
                   cylinders: cylinders,
                   milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if ((self.speed+(1/5)*maxSpeed) <= maxSpeed) {
            self.speed += ((1/5)*maxSpeed)
        } else {
            self.speed = maxSpeed
        }
    }
    
    override func decelerate() {
        if ((self.speed-(1/5)*maxSpeed) >= 0) {
            self.speed -= ((1/5)*maxSpeed)
        } else {
            self.speed = 0
        }
    }
    
    func driftRight() {
        if self.speed != 0.0 {
            self.speed -= (0.25*self.speed)
            self.heading += 90.0
        }
        
        if self.heading > 360 {
            self.heading -= 360
        }
    }
    
    func driftLeft() {
        if self.speed != 0.0 {
            self.speed -= (0.25*self.speed)
            self.heading -= 90.0
        }
        
        if self.heading < 0 {
            self.heading += 360
        }
    }
}
