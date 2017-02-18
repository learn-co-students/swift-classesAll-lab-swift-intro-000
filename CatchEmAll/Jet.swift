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
        if inFlight {
            if altitude < maxAltitude*4/5 && speed > 0 {
                altitude += maxAltitude/5
                decelerate()
            }else if altitude > maxAltitude*4/5 {
                altitude = maxAltitude
                decelerate()
            }

            
        }
    }
    
    override func dive() {
        
        if inFlight {
            if altitude > maxAltitude/5 && speed < maxSpeed {
                altitude -= maxAltitude/5
                accelerate()
            }else if altitude < maxAltitude/5 {
                altitude = 0.0
                accelerate()
            }

            
        }
        
    }

    func afterburner() {
        
        if speed == maxSpeed {
            speed = 2*maxSpeed
        }
    }
    
    
    
}
