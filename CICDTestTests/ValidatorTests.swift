//
//  ValidatorTests.swift
//  CICDTestTests
//
//  Created by 박연배 on 2022/03/02.
//

import XCTest
@testable import CICDTest

class ValidatorTests: XCTestCase {
    
    var sut: Validator!

    override func setUpWithError() throws {
        sut = Validator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testValidator_ValidID_ReturnTrue() throws {
        //Given
        let user = User(email: "park@gmail.com", password: "123456", check: "123456")
        //When
        let value = sut.isValidId(id: user.email)
        //Then
        XCTAssertTrue(value, "아이디가 유효하지 않다.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
