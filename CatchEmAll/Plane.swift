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
    if altitude == 0 && speed == 0 {
        
        return false
        
    }

    else {
        return true
        }
}

    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
    

self.maxAltitude = maxAltitude
        self.altitude = 0.0

        
 super.init(name: name, weight: weight, maxSpeed: maxSpeed )

}

    func takeOff () {
        if !inFlight {
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
            altitude  =  altitude + (maxAltitude*0.10)
            return
         decelerate()


}
        }
        func dive () {
            if inFlight {
                altitude = altitude - (maxAltitude*0.10)
                return
accelerate()

}
        }

            func bankRight () {
                if inFlight {
heading += 45
speed -= speed/10

}

}

    
    func bankLeft() {
        
        if inFlight {
        heading -= 45
        speed -= speed/10
        
    }
    
}


}

