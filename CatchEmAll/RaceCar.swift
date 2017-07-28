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
    
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double , driver : String, sponsors : [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    override func accelerate() {
        speed += maxSpeed*(1/5)
        if speed > maxSpeed {
            speed = maxSpeed}
        
    }
    override func decelerate() {
        speed -= maxSpeed*(1/5)
        if speed < 0 {
            speed  = 0
        }
    }
    
    func driftRight(){
        if speed != 0 {
            heading += 90
            speed -= speed*(1/4)
            if heading > 360{
                heading = heading - 360
            }
        }
    }
    
    func driftLeft () {
        if speed != 0 {
            heading -= 90
            speed -= speed*(1/4)
            if heading < 0 {
                heading = 360 - abs(heading)
            }
        }
    }
}
