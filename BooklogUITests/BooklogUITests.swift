//
//  BooklogUITests.swift
//  BooklogUITests
//
//  Created by Вадим on 23.05.2021.
//

import XCTest

class BooklogUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNow() {
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["Now"].tap()
    }
    
    func testBefore() {
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["Before"].tap()
    }
    
    func testBacklog() {
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["Backlog"].tap()
    }

    func testAddingToNow() {
        
        
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["Now"].buttons["Add"].tap()
        
        let tablesQuery = app.tables
        let titleTextField = tablesQuery.children(matching: .cell).element(boundBy: 0).children(matching: .textField).element
        titleTextField.tap()
        
        let authorTextField = tablesQuery.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element
        authorTextField.tap()
        
        
        let progressTextField = tablesQuery.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
        progressTextField.tap()
        
        app.navigationBars["Add Book"].buttons["Done"].tap()
        
        
    }
    
    func testAddingToBefore() {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["Before"].tap()
        app.navigationBars["Before"].buttons["Add"].tap()
        
        let tablesQuery = app.tables
        let titleTextField = tablesQuery.children(matching: .cell).element(boundBy: 0).children(matching: .textField).element
        titleTextField.tap()
        
        let authorTextField = tablesQuery.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element
        authorTextField.tap()
        
        let ratingTextField = tablesQuery.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
        ratingTextField.tap()
        
        app.navigationBars["Add Book"].buttons["Done"].tap()
        
    }
    
    func testAddingToBacklog() {
        
        let app = XCUIApplication()
        app.launch()
        app.tabBars["Tab Bar"].buttons["Backlog"].tap()
        app.navigationBars["Backlog"].buttons["Add"].tap()
        
        let tablesQuery = app.tables
        let titleTextField = tablesQuery.children(matching: .cell).element(boundBy: 0).children(matching: .textField).element
        titleTextField.tap()
        
        let authorTextField = tablesQuery.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element
        authorTextField.tap()

        app.navigationBars["Add Book"].buttons["Done"].tap()
        
    }
    
}
