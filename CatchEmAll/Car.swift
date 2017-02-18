//
//  Car.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

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
}

/*
 Finally, Car should add two new methods, which again take no parameters and have no return value:
 drive(), which simply calls super.accelerate()
 brake(), which simply calls super.decelerate()
 
 Next, you need to implement the Car class in Car.swift. Car should inherit from Vehicle. It should add three new properties:
 A constant Transmission named transmission
 A constant Int called cylinders
 A constant Double called milesPerGallon
 Car should also have an initializer that takes six parameters:
 A String called name
 A Double called weight
 A Double called maxSpeed
 A Transmission called transmission
 An Int called cylinders
 A Double called milesPerGallon
 */
