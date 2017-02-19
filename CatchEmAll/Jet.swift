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
            altitude  =  altitude + (maxAltitude/5)
            return
                decelerate()
            
            
        }
    }
        override func dive() {
            
            if inFlight {
                altitude = altitude - (maxAltitude/5)
                return
                    accelerate()
                
            }
        }
            func afterburner() {
                if speed == maxSpeed {
                    
            
        speed = 2*(maxSpeed)

}

}

}
