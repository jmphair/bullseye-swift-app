//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Jonathan Phair on 2023-04-06.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testExample() throws {
    XCTAssertEqual(game.points(sliderValue: 50), 999)
  }
  
//  func testPerformanceExample() throws {
//    // This is an example of a performance test case.
//    self.measure {
//      // Put the code you want to measure the time of here.
//    }
//  }
  
}
