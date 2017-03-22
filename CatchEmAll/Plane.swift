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
        guard altitude > 0 && speed > 0 else {return false}
        return true
    }
    
    init(maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        speed = maxSpeed/2
        altitude = maxAltitude/2
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight && altitude < maxAltitude {
        decelerate()
        altitude += maxAltitude/10
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
    }
    
    func dive() {
        if inFlight {
            accelerate()
            altitude -= maxAltitude/10
            if altitude < 0 {
                altitude = 0
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            speed -= speed/10
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed -= speed/10
            if heading < 0 {
                heading += 360
            }
        }
    }
}

/*
 Next, create a Plane class in Plane.swift. This class should inherit from Vehicle and add three new properties:
 A constant Double named maxAltitude
 A variable Double named altitude
 A calculated Bool named inFlight. This property should return true if both the altitude and speed are greater than 0.
 Plane should have an initializer that takes four parameters:
 A String named name
 A Double named weight
 A Double named maxSpeed
 A Double named maxAltitude
 This initializer should assign the parameter maxAltitude to the maxAltitude property, and also set the altitude parameter to 0. It should then call the superclass's initializer with the remaining parameters.
 Plane should also add six more methods, each of which take no parameters and return no value:
 takeOff(), which sets the plane's speed and altitude to ⅒ of their maximums, but only if the plane is not already in flight.
 land(), which sets the plane's speed and altitude to 0.
 climb(), which increases the plane's altitude by ⅒ of the plane's maxAltitude and causes the plane to decelerate. It should not set the plane's altitude beyond its maxAltitude, or reduce the speed below 0. The plane can only climb if it is in flight.
 dive(), which decreases the plane's altitude by ⅒ of the plane's maxAltitude and causes the plane to accelerate. It should not set the plane's altitude below 0 or increase the plane's speed beyond its maximumSpeed. The plane can only dive if it is in flight.
 bankRight(), which increases the plane's heading by 45 but only decreases the plane's speed by ⅒ of its current value. The plane can only bank if it is in flight.
 bankLeft(), which decreases the plane's heading by 45 but only decreases the plane's speed by ⅒ of its current value. The plane can only bank if it is in flight.
 The same rules for handling out of range heading values apply to bankLeft() and bankRight().

 */
