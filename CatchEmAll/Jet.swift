//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet:Plane {
    
    override func climb() {
        if inFlight == true {
            if altitude < (maxAltitude) && speed > 0.0 {
                altitude+=((1/5)*maxAltitude)
                if altitude > maxAltitude {
                    altitude = maxAltitude
                }
                decelerate()
            }
        }
    }
    override func dive() {
        if inFlight == true {
            if altitude < (maxAltitude) && speed > 0.0 {
                altitude-=((1/5)*maxAltitude)
                if altitude < 0.0 {
                    altitude = 0.0
                }
                accelerate()
            }
        }
    }
    
    func afterburner() {
        
        if inFlight == true && speed == maxSpeed {
            speed = 2*maxSpeed
        }
        
    }
    
}
