//
//  LimboModelTests.swift
//  Limbo
//
//  Created by Neil van Beinum on 13/05/2015.
//  Copyright (c) 2015 Neil van Beinum. All rights reserved.
//

import UIKit
import XCTest

class LimboModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLimboModelPatternLength() {
        let limboModel = LimboModel(limbPatternLength: 8)
        
        XCTAssertEqual(8, limboModel.limbPattern().count)
    }
}
