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
    var altitude: Double {
        didSet {
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
            else if self.altitude < 0.0 {
                self.altitude = 0.0
            }
        }
    }
    var inFlight: Bool {
        if self.altitude == 0 || self.speed == 0 {
            return false
        }
        else {
            return true
        }
    }
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    func takeOff() {
        if !inFlight {
            self.speed = (self.maxSpeed / 10)
            self.altitude = (self.maxAltitude / 10)
        }
    }
    func land() {
        if inFlight {
            self.speed = 0.0
            self.altitude = 0.0
        }
    }
    func climb() {
        if inFlight && self.altitude < self.maxAltitude {
            self.altitude += (self.maxAltitude / 10)
            self.decelerate()
        }
    }
    func dive() {
        if inFlight {
            self.altitude -= (self.maxAltitude / 10)
            self.accelerate()
        }
    }
    func bankRight() {
        if inFlight {
            self.heading += 45
            self.speed -= (self.speed / 10)
        }
    }
    func bankLeft() {
        if inFlight {
            self.heading -= 45
            self.speed -= (self.speed / 10)
        }
    }
}
/*
 A constant Double named maxAltitude
 A variable Double named altitude
 A calculated Bool named inFlight. This property should return true if both the altitude and speed are 0.
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
 The same rules for handling out of range heading values apply to bankLeft() and bankRight()
 */




