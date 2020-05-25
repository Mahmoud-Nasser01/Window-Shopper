//
//  WageTests.swift
//  Window-ShopperTests
//
//  Created by Mahmoud Nasser on 5/25/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import XCTest
@testable import Window_Shopper

class WageTests: XCTestCase {

    var wage: Wage!

    override func setUp() {
        super.setUp()
        wage = Wage()
    }

    override func tearDown() {
        super.tearDown()
        wage = nil
    }

    func testGetHours() {
        XCTAssertEqual(self.wage.getHours(forHourlyWage: 10, itemPrice: 465), Int(47))
    }

}
