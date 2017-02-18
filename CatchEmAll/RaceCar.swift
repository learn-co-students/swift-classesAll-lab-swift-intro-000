//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    let driver : String
    var sponsors : [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
            guard speed < maxSpeed else {return}
            speed = speed + 0.2 * maxSpeed
        }
    
    override func decelerate() {
        guard speed > 0 else {return}
        speed = speed - 0.2 * maxSpeed
    }
    
    func driftRight() {
        guard speed > 0 else {return}
        heading += 90
        speed *= 0.75
    }
    
    func driftLeft() {
        guard speed > 0 else {return}
        heading -= 90
        speed *= 0.75
    }
    
    

    }
