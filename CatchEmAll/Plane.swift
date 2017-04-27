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
    var altitude: Double
    
    var inFlight: Bool {
        return speed > 0.0 && altitude > 0.0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        altitude = 0.0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            altitude = maxAltitude / 10
            speed = maxSpeed / 10
        }
    }
    
    func land() {
        altitude = 0.0
        speed = 0.0
    }
    
    func climb() {
        if inFlight {
            if speed > maxSpeed * 0.1 {
                if altitude >= maxAltitude * 0.9 {
                    altitude = maxAltitude
                
                
                } else {
                    altitude += maxAltitude * 0.1
                }
                
                deccelerate()
            
            } else {
                land()
            }
        }
    }
    
    
    func dive() {
        if inFlight {
            if altitude > maxAltitude / 10 {
                accelerate ()
                altitude -= maxAltitude * 0.1
            
            } else {
                altitude = 0.0
                accelerate()
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading = (heading + 45).truncatingRemainder(dividingBy: 360)
            speed = speed * 0.9
        }
        
    }
    
    func bankLeft() {
        
        if inFlight {
            heading =  (360 + (heading - 45)).truncatingRemainder(dividingBy: 360)
            speed = speed * 0.9
        }
    }
}
