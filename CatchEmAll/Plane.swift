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
    var altitude: Double = 0.0
    var inFlight: Bool {
        get {
            if maxAltitude > 0 && altitude > 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff(){
        if inFlight != true {
            speed = 0.1*maxSpeed
            altitude = 0.1*maxAltitude
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        
        if inFlight {
            if altitude + 0.1*maxAltitude > maxAltitude {
                altitude = maxAltitude
                decelerate()
            } else {
                altitude += maxAltitude*0.1
                decelerate()
            }
           
        }
    }
    
    func dive() {
        
        if inFlight {
            if altitude - 0.1*maxAltitude <= 0 {
                altitude = 0
                accelerate()
            } else {
                altitude -= maxAltitude*0.1
                accelerate()
            }
            
        }
    }
   
    func bankRight() {
       
        
        if speed > 0 && inFlight {
            
            heading += 45
            speed -= speed/10
            
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func bankLeft() {
        
        if speed > 0 && inFlight{
            
            heading -= 45
            speed -= speed/10
            
            if heading < 0 {
                heading += 360
            }
        }
    }
    


}
