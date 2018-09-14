//
//  test_pracTests.swift
//  test-pracTests
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import XCTest
@testable import test_prac

class test_pracTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testMultiplication() {
        // ReadableRepositoryContract#read() = 4 の時、
        let int = 4
        // ImplicitInput#reduce() = 3 となる
        let expected = 3

        // スタブ作成
        let repositoryStub = ReadableRepositoryStub(base: int)
        // スタブを差し込む
        let input = ImplicitInput(readVia: repositoryStub)
        // 内部でスタブが利用される
        let actual = input.reduce()

        // 引数のa1とa2が等しい場合成功
        XCTAssertEqual(actual, expected)

    }
    
}
