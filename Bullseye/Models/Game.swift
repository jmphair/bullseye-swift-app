//
//  Game.swift
//  Bullseye
//
//  Created by Jonathan Phair on 2023-04-07.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    let difference: Int = abs(self.target - sliderValue)
    let awardedPoints: Int = 100 - difference
    return awardedPoints
  }
}
