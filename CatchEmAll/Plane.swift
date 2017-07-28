//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude : Double
    var altitude = 0.0
    var inFlight : Bool{
        var result = Bool()
        if  (speed > 0 && altitude > 0) {
            result = true
        }
        return result
    }
    
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude : Double) {
        self.maxAltitude = maxAltitude
        //  self.altitude = altitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
        
    }
    func takeOff(){
        if altitude == 0 {
            speed = maxSpeed*(1/10)
            altitude = maxAltitude*(1/10)
            
        }
    }
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if altitude > 0{
            altitude += maxAltitude*(1/10)
            decelerate()}
        
        if altitude > maxAltitude{
            altitude = maxAltitude
        }
        if speed < 0{
            speed = 0
        }
    }
    
    func dive()  {
        if altitude > 0{
            altitude -= maxAltitude*(1/10)
            accelerate()
            if speed > maxSpeed{
                speed = maxSpeed
            }
            if altitude < 0{
                altitude = 0
            }
        }
    }
    
    func bankRight()  {
        if inFlight == true{
            heading += 45
            if heading > 360{
                heading -= 360
            }
            speed -= speed*(1/10)
        }
        
        
    }
    func bankLeft()  {
        if inFlight == true{
            heading -= 45
            if heading < 0{
                heading = 360 - abs(heading)
            }
            speed -= speed*(1/10)
        }
    }
}
