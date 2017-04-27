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
        if speed >= maxSpeed * 0.8 {
            goFast()
        } else {
            speed += maxSpeed * 0.2
        }
    }
    
    override func deccelerate() {
        if speed <= maxSpeed * 0.2 {
            halt()
        } else {
            speed -= maxSpeed * 0.2
        }
    }
    
    func driftRight() {
        if speed > 0 {
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
            speed = (3 * speed) / 4
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            heading = (360 + (heading - 90)).truncatingRemainder(dividingBy: 360)
            speed = (3 + speed) / 4
        }
    }
}
