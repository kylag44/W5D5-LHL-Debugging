//
//  BreakPointsTourSwiftTests.swift
//  BreakPointsTourSwiftTests
//
//  Created by steve on 2016-05-30.
//  Copyright © 2016 steve. All rights reserved.
//

import XCTest
@testable import BreakPointsTourSwift

class BreakPointsTourSwiftTests: XCTestCase {
  
  let flag = true
  
  // Talk through debug controls by stepping through this code
  // Adding/Moving breakpoints (Live)
  // Moving current break line
  // Breakpoint navigator
  
  func testDemoDebugControls() {
    
    var num = 10
    num += 10
    let result = self.functionToStepInto(num)
    print(#line, result)
  }
  
  // stepping into a function
  func functionToStepInto(_ num:Int) -> Int {
    var num = num
    num = num + 100
    return num
  }
  
  func testConditionSetting() {
    for i in 1...5 {
      print(#line, i)
    }
  }
  
  func testIgnoreTimesSetting() {
    for i in 1...5 {
      print(#line, i)
    }
  }
  
  func testActionDebuggerCommand() {
    for i in 1...5 {
      let _ = i + 1
    }
  }
  
  
  func testActionLogMessageWithExpressionLoggedToConsole() {
    for i in 1...5 {
      print(#line, i)
    }
  }
  
  func testActionMessageWithExpressionSpeaking() {
    for i in 1...5 {
      print(i)
    }
  }
  
  func testActionSound() {
    for i in 1...5 {
      print(i)
    }
  }
  
  func testMultipleActions() {
    for i in 1...5 {
      print(i)
    }
  }
  // **********************************
  // Show SYMBOLS breakpoint in navigator
  // **********************************
  // Add User Breakpoints
  // ====================
  // * All Objective-C Exceptions (po $arg1)
  // * -[UIApplication main] (expr @import UIKit)
  // * UIViewAlertForUnsatisfiableConstraints
  // * -[UIView(UIConstraintBasedLayout) _viewHierarchyUnpreparedForConstraint:]
  // * UICollectionViewFlowLayoutBreakForInvalidSizes
  
  // https://medium.com/rocket-fuel/ios-breakpoint-secret-sauce-for-better-debugging-c0009f116ca1
  
  
  // Show ALL EXCEPTIONS breakpoint by tapping Go button in ViewController
  
}
