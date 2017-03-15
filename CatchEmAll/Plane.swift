//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        return altitude > 0 && speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff(){
        if inFlight == false {
            speed = (maxSpeed/10)
            altitude = (maxAltitude/10)
        }
    }
    
    func land(){
        if inFlight == true {
            speed = 0
            altitude = 0
        }
    }
    
    func climb(){
        if inFlight == true && altitude < maxAltitude && speed - (maxSpeed/10) >= 0{
                switch altitude + (maxAltitude/10) > maxAltitude {
                case true:
                    altitude = maxAltitude
                default:
                    altitude = altitude + (maxAltitude/10)
                }
                super.decelerate()
        }
    }
    
    func dive(){
        if inFlight == true {
            if altitude - (maxAltitude/10) >= 0 {
                altitude = altitude - (maxAltitude/10)
            } else {
                altitude = 0
            }
            super.accelerate()
            }
        }

    
    func bankRight(){
        if inFlight == true && speed > 0 {
                if heading + 45 >= 360 {
                    heading -= 315
                } else {
                    heading += 45
                }
                speed = speed - (speed/10)
        }
    }
    
    func bankLeft(){
        if inFlight == true && speed > 0 {
                if heading - 45 < 0 {
                    heading += 315
                } else {
                    heading -= 45
                }
                speed = speed - (speed/10)
        }
    }
        
        
        
        
        
        
}




























