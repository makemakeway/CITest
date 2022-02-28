//
//  CICDTestTests.swift
//  CICDTestTests
//
//  Created by 박연배 on 2022/02/28.
//

import XCTest
@testable import CICDTest

class CICDTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.loadViewIfNeeded()
        vc.firstTextField.text = "케케케케켘"
        
        let cnt = vc.calculateTextFieldCount()
        
        XCTAssertEqual(cnt, 5)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
