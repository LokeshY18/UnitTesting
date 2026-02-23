//
//  UnitTestingUI_tests.swift
//  UnitTestingUITests
//
//  Created by Lokesh Yarashi on 19/02/26.
//

import XCTest
@testable import UnitTesting
final class UnitTestingUI_tests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
    }

    func test_UnitTestingUI_addTaskButton_shouldAddTask() throws {
        let app = XCUIApplication()
        app.activate()
        app/*@START_MENU_TOKEN@*/.textFields["new task"]/*[[".otherElements.textFields[\"new task\"]",".textFields",".textFields[\"new task\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.textFields["new task"]/*[[".otherElements",".textFields[\"Fourth Task\"]",".textFields[\"new task\"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.typeText("Fourth Task")
        
        let element = app/*@START_MENU_TOKEN@*/.buttons["Add Task"]/*[[".otherElements.buttons[\"Add Task\"]",".buttons[\"Add Task\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element.tap()
        element.tap()
        app.otherElements.matching(identifier: "Horizontal scroll bar, 1 page").element(boundBy: 1).tap()
        
    }
}
