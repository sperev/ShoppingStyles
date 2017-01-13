//
//  UnitTests.swift
//  UnitTests
//
//  Created by Sergei Perevoznikov on 13/01/2017.
//  Copyright © 2017 Sergei Perevoznikov. All rights reserved.
//

import XCTest
import ShoppingStyles

class UnitTests: XCTestCase {
    
    func testBold() {
        XCTAssertNotNil(Styles().bold())
    }
    
    func testLight() {
        XCTAssertNotNil(Styles().light())
    }
    
    func testMedium() {
        XCTAssertNotNil(Styles().medium())
    }
    
    func testRegular() {
        XCTAssertNotNil(Styles().regular())
    }
    
    func testSemibold() {
        XCTAssertNotNil(Styles().semibold())
    }
    
}
