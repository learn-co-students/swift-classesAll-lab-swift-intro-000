//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    let driver : String;
    let sponsors : [String];
    
    init(name : String, weight : Double, maxSpeed : Double, transmission : Transmission, cylinders : Int, milesPerGallon : Double, driver : String, sponsors : [String]) {
        self.driver = driver;
        self.sponsors = sponsors;
        super.init(name : name , weight : weight, maxSpeed : maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        self.speed += 0.2*self.maxSpeed
        if (self.speed > self.maxSpeed) {
            self.speed = self.maxSpeed
        }
    }
    
    override func decelerate() {
        self.speed -= 0.2*self.maxSpeed
        if (self.speed < 0) {
            self.speed = 0
        }
    }
    
    func driftRight() {
        if (self.speed == 0) {
            return
        }
        self.heading += 90
        if (self.heading > 360) {
            self.heading -= 360;
        }
        self.speed = 0.75 * self.speed
    }
    
    func driftLeft() {
        if (self.speed == 0) {
            return
        }
        self.heading -= 90
        if (self.heading < 0) {
            self.heading += 360;
        }
        self.speed = 0.75 * self.speed
    }
}
