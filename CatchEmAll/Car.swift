//
//  Car.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic, Manual
}

class Car: Vehicle {
    let transmission: Transmission
    let cylinders: Int
    let milesPerGallon: Double
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive() {
        super.accelerate()
    }
    
    func brake() {
        super.decelerate()
    }
    
    /*
     - throwing an error for the enum Transmission as being ambiguous, might just require the parameter to have a different name or the enum itself
     - the member has no value, being driftRight, is failing I think due to the object somehow not conforming. Can cast it to a variable and call it then?
     */
}
