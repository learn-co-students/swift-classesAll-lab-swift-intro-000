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
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]){
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let testNewSpeed = speed + 0.2 * self.maxSpeed
        if testNewSpeed <= self.maxSpeed {
            speed += 0.2 * self.maxSpeed
        }
    }
    
    override func decelerate() {
        let testNewSpeed = speed - 0.2 * self.maxSpeed
        if testNewSpeed > 0 {
            speed -= 0.2 * self.maxSpeed
        } else {
            speed = 0
        }
    }
    
    func driftRight() {
        if speed == 0.0 {
            print("car is currently not moving")
        } else {
            heading += 90
            speed *= 0.75
            if heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
    func driftLeft() {
        if speed == 0.0 {
            print("car is currently not moving")
        } else {
            heading -= 90
            speed *= 0.75
            if heading < 0.0 {
                heading += 360.0
            }
        }
    }
}
