//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    var name : String
    var weight : Double
    var maxSpeed : Double
    var speed : Double {
        didSet {
            if speed > megaSpeed {
                speed = maxSpeed
            }

            
            while speed < 0 {
                speed = 0
            }
        }
    }
    
    var megaSpeed: Double {
        return maxSpeed
    }
    
    var heading : Double {
        didSet {
            while heading < 0.0 {
                heading += 360.0
            }
            
            while heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0
        self.heading = 0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        guard speed < maxSpeed else {return}
        speed = speed + 0.1 * maxSpeed
    }

    func decelerate() {
        guard speed > 0 else {return}
        speed = speed - 0.1 * maxSpeed
    }
    
    func turnRight() {
         guard speed > 0 else {return}
         heading += 90
         speed = speed * 0.5
        
    }
    
    func turnLeft() {
        guard speed > 0 else {return}
        heading -= 90
        speed *= 0.5
        
    }
    
   

}
