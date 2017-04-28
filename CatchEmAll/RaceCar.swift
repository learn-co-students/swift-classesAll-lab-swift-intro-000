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
        let increase = self.maxSpeed * 0.2
        if !(self.speed + increase >= self.maxSpeed) {
            self.speed += increase
        }
    }
    override func decelerate () {
        let decrease = self.maxSpeed * 0.2
        if !(self.speed - decrease >= 0) {
            self.speed -= decrease
        }
    }
    func driftRight() {
        if self.speed > 0 {
            super.turnRight()
            self.speed /= 2
        }
    }
    func driftLeft() {
        if self.speed > 0 {
            super.turnLeft()
            self.speed /= 2
        }
    }
}
