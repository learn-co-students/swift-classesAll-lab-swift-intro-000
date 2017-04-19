//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
  case Automatic
  case Manual
}

class Vehicle {
  let name: String
  let weight: Double
  let maxSpeed: Double
  var speed: Double
  var heading: Double
  
  // MARK: -
  // Vehicle should also have an initializer that takes name,weight, and maxSpeed as parameters, and sets the appropriate properties. It should also set speed and heading` to 0.0.
  init(name: String, weight: Double, maxSpeed: Double) {
    self.name = name
    self.weight = weight
    self.maxSpeed = maxSpeed
    self.speed = 0.0
    self.heading = 0.0
  }
  
  //  goFast(), which sets the vehicle's speed to its maxSpeed.
  func goFast() {
    speed = maxSpeed
  }
  
  //  halt(), which sets the vehicle's speed to 0.
  func halt() {
    speed = 0.0
  }
  
  //  accelerate(), which increases the vehicle's speed by ⅒ its maxSpeed. It cannot increase the vehicle's speed beyond its maxSpeed.
  func accelerate() {
    speed += (maxSpeed / 10)
    if speed > maxSpeed {
      speed = maxSpeed
    }
  }
  
  //  decelerate(), which decreases the vehicle's speed by ⅒ its maxSpeed. It cannot decrease the vehicle's speed below 0.
  func decelerate() {
    speed -= (maxSpeed / 10)
    if speed < 0 {
      speed = 0
    }
  }
  
  //  turnRight(), which increases the vehicle's heading by 90 and cuts its speed in half. If the vehicle's heading increases beyond 360, it wraps around again (that is, if the heading would be increased to 375, it wraps around to 15 again). The vehicle cannot turn if it is stationary (has a speed of 0).
  func turnRight() {
    if speed != 0 {
    
      heading += 90
      speed /= 2
      
      if heading > 360 {
        heading -= 360
      }
    }
  }
  
  //  turnLeft() which decreases the vehicle's heading by 90 and cuts its speed in half. If the vehicle's heading decreases below 0, it wraps around again (that is, if it would decrease to -15, it would instead wrap around to 345). The vehicle cannot turn if it is stationery (has a speed of 0).
  func turnLeft() {
    if speed != 0 {
    
      heading -= 90
      speed /= 2
      
      if heading < 0 {
        heading += 360
      }
    }
  }
}
