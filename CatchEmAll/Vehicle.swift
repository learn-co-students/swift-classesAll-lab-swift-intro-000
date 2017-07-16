//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
  let name : String
  let weight : Double
  let maxSpeed : Double
  var speed = 0.0
  var heading = 0.0
  
  init (name : String, weight : Double, maxSpeed : Double){
    self.name = name
    self.weight = weight
    self.maxSpeed = maxSpeed
  
  
}
  func headerControl() -> String {
    if heading > 360 || heading < 0 {
      heading = 0.0
          }
  return "Heading must be between 0 and 360."
  }
  
  func goFast() {
    speed = maxSpeed
  }
  
  func halt()  {
    speed = 0.0
  }
  
  func accelerate()  {
    speed += maxSpeed*(1/10)
    if speed > maxSpeed {
      speed = maxSpeed}
  }
  
  func decelerate() {
    speed -= maxSpeed*(1/10)
    if speed < 0 {
      speed  = 0
    }
  }
  
  func turnRight() {
    
    if speed != 0 {
    heading += 90
      speed = speed/2}
    if heading >= 360 {
      heading = heading - 360
      }
    }
    
    func turnLeft () {
      if speed != 0 {
        heading -= 90
        speed = speed/2
        if heading < 0 {
          heading = 360 - abs(heading)
        }
      }
    }

  }
  enum Transmission{
  case Automatic
  case Manual
}

