//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if inFlight == true && altitude < maxAltitude && speed - (maxSpeed/10) >= 0{
            switch altitude + (maxAltitude/5) > maxAltitude {
            case true:
                altitude = maxAltitude
            default:
                altitude = altitude + (maxAltitude/5)
            }
            super.decelerate()
        }
    }
    
    override func dive() {
        if inFlight == true {
            if altitude - (maxAltitude/5) >= 0 {
                altitude = altitude - (maxAltitude/5)
            } else {
                altitude = 0
            }
            super.accelerate()
        }
    }
    
    func afterburner(){
        if speed == maxSpeed{
            speed = maxSpeed * 2
        }
    }
    
    
    
    
}


















