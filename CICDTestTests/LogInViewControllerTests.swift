//
//  LogInViewControllerTests.swift
//  CICDTestTests
//
//  Created by 박연배 on 2022/03/02.
//

import XCTest
@testable import CICDTest

class LogInViewControllerTests: XCTestCase {
    
    // system under test
    var sut: LogInViewController!

    override func setUpWithError() throws {
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    //BDD(Behavior Driven Development): Given, When, Then
    //TDD(Test Driven Development): AAA
//    func testLogInViewController_validId_returnTrue() throws {
//        //Given, Arrange
//        sut.idTextField.text = "yeonpark@gmail.com"
//        //When, Act
//        let valid = sut.isValidId()
//        //Then, Assert
//        XCTAssertTrue(valid, "아이디가 유효하지 않다")
//    }
//
//    func testLogInViewController_validPassword_returnFalse() throws {
//
//        sut.passwordTextField.text = "1234"
//
//        let valid = sut.isValidPassword()
//
//        XCTAssertFalse(valid, "패스워드 유효하지 않다")
//    }
//
//    func testLogInViewController_idTextField_returnNil() throws {
//
//        sut.idTextField = nil
//        let value = sut.idTextField
//
//        XCTAssertNil(value, "닐값이 아님")
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
