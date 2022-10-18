//
//  SwiftUI_Demo_AppUITests.swift
//  SwiftUI Demo AppUITests
//
//  Created by Emil Atanasov on 10/18/22.
//

import XCTest

final class SwiftUI_Demo_AppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        app.buttons["Clicked 0 times!"].tap()
        app.buttons["Clicked 1 times!"].tap()
        app.buttons["Clicked 2 times!"].tap()
        app.buttons["Clicked 3 times!"].tap()
        app.buttons["Clicked 4 times!"].tap()
        
        let button = app.buttons["Clicked 5 times!"]
        
        XCTAssertNotNil(button, "Button is nil :/")
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}