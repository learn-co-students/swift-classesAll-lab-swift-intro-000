//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        guard inFlight == true else {return}
       
            altitude += 0.2 * maxAltitude
            self.decelerate()
       
        
    }
    
    override func dive() {
        guard inFlight == true else {return}
       
            altitude -= 0.2 * maxAltitude
            self.accelerate()
                
    }
    
    override var megaSpeed: Double {
        return maxSpeed * 2.0
    }
    
    func afterburner() {
        guard inFlight else { return }
        guard speed == maxSpeed else { return }
        speed = maxSpeed * 2.0
    }

}



