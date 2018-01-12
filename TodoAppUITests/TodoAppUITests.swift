//
//  TodoAppUITests.swift
//  TodoAppUITests
//
//  Created by Woodland on 1/11/18.
//  Copyright © 2018 Jonathan Hdez. All rights reserved.
//

import XCTest

class TodoAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        
        let app = XCUIApplication()
        app.navigationBars["Checklists"].buttons["Add"].tap()
        
        let addNewListAlert = app.alerts["Add New List"]
        addNewListAlert.collectionViews.textFields["Name"].typeText("Checklist")
        addNewListAlert.buttons["Save"].tap()
        app.buttons["OK"].tap()
        
        
        XCTAssert(app.staticTexts["Checklist"].exists)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
