//
//  APIServiceTests.swift
//  CICDTestTests
//
//  Created by 박연배 on 2022/03/03.
//

import XCTest
@testable import CICDTest

class APIServiceTests: XCTestCase {
    
    var sut: APIService!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = APIService()
    }

    override func tearDownWithError() throws {
        sut = nil
        
        try super.tearDownWithError()
    }

    func testExample() throws {
        sut.number = 100
        
        sut.callRequest { number in
            XCTAssertLessThanOrEqual(self.sut.number, 45)
            XCTAssertGreaterThanOrEqual(self.sut.number, 1)
        }
    }
    
    // Expectation, fulfill, wait
    func testExampleUsingAsync() throws {
        sut.number = 30
        
        let promise = expectation(description: "Wating Lotto Number, Completion Handler Invoked")
        
        sut.callRequest { number in
            XCTAssertLessThanOrEqual(self.sut.number, 45)
            XCTAssertGreaterThanOrEqual(self.sut.number, 1)
            promise.fulfill() // Expectation으로 정의한 테스트를 충족한 시점에 호출
        }
        
        wait(for: [promise], timeout: 10) // timeout = 10초가 지나면 실패로 간주
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
