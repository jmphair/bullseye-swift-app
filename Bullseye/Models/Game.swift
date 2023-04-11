//
//  Game.swift
//  Bullseye
//
//  Created by Jonathan Phair on 2023-04-07.
//

import Foundation

struct Game {
  var target = Int.random(in: 1..<100)
  var score = 0
  var round = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(target - sliderValue)
  }
}
