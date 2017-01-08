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
        
        if speed > 0 && altitude > 0 {
            return true
        }
        return false
    }
    
    init (name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        altitude = 0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        
        if inFlight == false {
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    
    }
    
    func climb() {
        
        if inFlight {
            if altitude <= maxAltitude*9/10 && speed > 0 {
                altitude += maxAltitude/10
                decelerate()
            } else if altitude > maxAltitude*9/10 {
                altitude = maxAltitude
                decelerate()
            }
            
        }
        
    }
    
    func dive() {
        
        if inFlight {
            if altitude > maxAltitude/10 && speed < maxSpeed {
                altitude -= maxAltitude/10
                accelerate()
            } else if altitude < maxAltitude/10 {
                altitude = 0.0
                accelerate()
            }
            
        }
        
    }
    
    func bankRight() {
        
        if inFlight {
            speed = speed*9/10
            if heading < 315 {
                heading = heading+45
            } else {
                heading = (heading + 45) - 360
            }
            
        }
    }

    func bankLeft() {
        
        if inFlight {
            speed = speed*9/10
            if heading > 45 {
                heading -= 45
            } else {
                heading = 360 + (heading - 45)
            }
            
        }
    }

    
    
    
}
