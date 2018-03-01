//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar:Car {
    
    let driver:String
    var sponsors:[String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double,driver:String,sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed < maxSpeed {
            speed+=((1/5)*maxSpeed)
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    override func decelerate() {
        if speed > 0.0 {
            speed-=((1/5)*maxSpeed)
            if speed < 0.0 {
                speed = 0.0
            }
        }
    }
    
    func driftRight() {
        if heading >= 0.0 && heading <= 270.0 && speed != 0.0 {
            heading+=90.0
            speed -= (1/4)*speed
        } else if heading > 270.0 && speed != 0.0 {
            heading = heading + 90.0 - 360.0
            speed -= (1/4)*speed
        }
    }
    func driftLeft() {
        if heading >= 90.0 && heading <= 360.0 && speed != 0.0 {
            heading-=90.0
            speed -= (1/4)*speed
        } else if heading >= 0.0 && heading < 90.0 && speed != 0.0 {
            heading = 360 - (90.0 - heading)
            speed -= (1/4)*speed
        }
    }
    
}

















