//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane:Vehicle {
    
    let maxAltitude:Double
    var altitude:Double = 0.0
    var inFlight:Bool {
        if altitude > 0.0 && speed > 0.0 {
            return true
        }
        return false
    }
    
    init(name:String,weight:Double,maxSpeed:Double,maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        super.init(name:name,weight:weight,maxSpeed: maxSpeed)
    }
    func takeOff() {
        
        if inFlight == false {
            speed = (1/10)*maxSpeed
            altitude = (1/10)*maxAltitude
        }
    }
    func land() {
        speed = 0.0
        altitude = 0.0
    }
    func climb() {
        if inFlight == true {
            if altitude < maxAltitude && speed > 0.0 {
                altitude = altitude + ((1/10)*maxAltitude)
                if altitude > maxAltitude {
                    altitude = maxAltitude
                }
                decelerate()
            }
        }
    }
    
    func dive() {
        if inFlight == true {
            if altitude < (maxAltitude) && speed > 0.0 {
                altitude = altitude - ((1/10)*maxAltitude)
                if altitude < 0.0 {
                    altitude = 0.0
                }
                accelerate()
            }
        }
    }
    
    
    
    func bankRight() {
        if inFlight == true {
            if heading >= 0.0 && heading <= 315.0 && speed != 0.0 {
                heading+=45.0
                speed-=((1/10)*speed)
            } else if heading > 315.0 && speed != 0.0 {
                heading = heading + 45.0 - 360.0
                speed-=((1/10)*speed)
            }
        }
    }
    func bankLeft() {
        if heading >= 45.0 && heading <= 360.0 && speed != 0.0 {
            heading-=45.0
            speed-=((1/10)*speed)
        } else if heading >= 0.0 && heading < 45.0 && speed != 0.0 {
            heading = 360 - (45.0 - heading)
            speed-=((1/10)*speed)
        }
    }
}






















