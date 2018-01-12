//
//  TodoAppTests.swift
//  TodoAppTests
//
//  Created by Woodland on 1/11/18.
//  Copyright © 2018 Jonathan Hdez. All rights reserved.
//

import XCTest
@testable import TodoApp

class TodoAppTests: XCTestCase {
    
    var categoriesViewController : CategoriesViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        categoriesViewController = CategoriesViewController()
        categoriesViewController.updateViewConstraints()
        
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
    
}
