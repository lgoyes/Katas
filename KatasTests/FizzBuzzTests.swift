//
//  FizzBuzzTests.swift
//  KatasTests
//
//  Created by Luis David Goyes on 13/09/22.
//

import XCTest

class FizzBuzzTests: XCTestCase {

    private var sut: FizzBuzz!
    
    override func setUp() {
        super.setUp()
        let processors: [LineProcessor] = [FizzBuzzLineProcessor(), FizzLineProcessor(), BuzzLineProcessor(), AnyLineProcessor()]
        sut = FizzBuzz(processors: processors)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}

// MARK: - getMessage

extension FizzBuzzTests {
    func test_WHEN_getMessage_GIVEN_someLineNotMultipleNeitherOf3NorOf5Like1_THEN_itShouldReturnTheNumberConvertedAsAStringLike1() {
        let line = 1
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "1"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineNotMultipleNeitherOf3NorOf5Like2_THEN_itShouldReturnTheNumberConvertedAsAStringLike2() {
        let line = 2
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "2"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineMultipleOf3AndNOTMultipleOf5Like3_THEN_itShouldReturnTheWordFizz() {
        let line = 3
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "fizz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineMultipleOf3AndNOTMultipleOf5Like6_THEN_itShouldReturnTheWordFizz() {
        let line = 6
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "fizz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineMultipleOf3AndNOTMultipleOf5Like9_THEN_itShouldReturnTheWordFizz() {
        let line = 9
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "fizz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineNotMultipleOf3AndMultipleOf5Like5_THEN_itShouldReturnTheWordBuzz() {
        let line = 5
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "buzz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineNotMultipleOf3AndMultipleOf5Like10_THEN_itShouldReturnTheWordBuzz() {
        let line = 10
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "buzz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
    
    func test_WHEN_getMessage_GIVEN_someLineMultipleOfBoth3And5Like15_THEN_itShouldReturnTheWordFizzBuzz() {
        let line = 15
        let actualMessage = sut.getMessage(forLine: line)
        let expectedMessage = "fizzbuzz"
        XCTAssertEqual(actualMessage, expectedMessage)
    }
}
