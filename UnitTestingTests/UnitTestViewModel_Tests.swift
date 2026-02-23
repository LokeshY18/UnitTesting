//
//  UnitTestViewModel_Tests.swift
//  UnitTestingTests
//
//  Created by Lokesh Yarashi on 18/02/26.
//

import XCTest
@testable import UnitTesting
final class UnitTestViewModel_Tests: XCTestCase {
    
    private var sut: UnitTestingViewModel!
    
    override func setUp() {
        super.setUp()
        sut = UnitTestingViewModel()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_UnitTestingViewModel_addItems() {
        //Arrange: Where we create all the necessary Data/Objects that are required for Tests
        let newToDoTask = "Test task"
        let initialTaskCount = sut.tasks.count
        
        //Act: Call the Method we want to test
        sut.addItems(task: newToDoTask)
        
        //Assert: Match the result with the expected outcome
        XCTAssertEqual(sut.tasks.count, initialTaskCount + 1)
    }
    
    func test_UnitTestingViewModel_task_isEmpty() {
        //Arrange
        let isEmpty: Bool = false
        
        //Act
        
        //Assetion
        XCTAssertEqual(sut.tasks.isEmpty, isEmpty)
    }
}
