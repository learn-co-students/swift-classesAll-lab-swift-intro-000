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
    
    init (name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]){
        
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if (speed+maxSpeed/5) <= maxSpeed {
            
            speed += maxSpeed/5
        } else if speed >= maxSpeed*4/5 {
            speed = maxSpeed
        }


    }
    
    override func decelerate() {
            if (speed-maxSpeed/5) > 0 {
                speed -= maxSpeed/5
            }else if speed <= maxSpeed/5 {
                
                speed = 0.0
        }

        }
    
    func driftRight() {
        if speed > 0 {
            speed = speed*3/4
            if heading <= 270 {
                heading = heading+90
            } else {
                heading = (heading + 90) - 360
            }
            
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            speed = speed*3/4
            if heading >= 90 {
                heading = heading-90
            } else {
                heading = 360 + (heading - 90)
            }
            
        }
        
    }
}

