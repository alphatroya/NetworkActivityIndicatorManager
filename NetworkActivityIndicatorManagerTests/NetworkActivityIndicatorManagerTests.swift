//
//  NetworkActivityIndicatorManagerTests.swift
//  NetworkActivityIndicatorManagerTests
//
//  Created by Alexey Korolev on 31.01.16.
//  Copyright © 2016 Alexey Korolev. All rights reserved.
//

import XCTest
@testable import NetworkActivityIndicatorManager

class ApplicationMock: ApplicationProtocol {
    var isNetworkActivityIndicatorVisible: Bool = false
}

final class NetworkActivityIndicatorManagerTests: XCTestCase {
    var indicatorManager: NetworkActivityIndicatorManager!
    var application: ApplicationProtocol!

    override func setUp() {
        super.setUp()
        application = ApplicationMock()
        indicatorManager = NetworkActivityIndicatorManager(withApplication: application)
    }

    override func tearDown() {
        indicatorManager.resetActivityCount()
        indicatorManager = nil
        application = nil
        super.tearDown()
    }

    func testManagerShouldShowActivityIndicatorAfterAddingActivity() {
        indicatorManager.addActivity()
        XCTAssertTrue(application.isNetworkActivityIndicatorVisible)
    }

    func testManagerShouldHideActivityIndicatorAfterAddingAndRemobingActivity() {
        indicatorManager.addActivity()
        indicatorManager.removeActivity()
        XCTAssertFalse(application.isNetworkActivityIndicatorVisible)
    }

    func testManagerShouldAddActivityIfCountOfAddictivesGreaterThatRemoving() {
        indicatorManager.addActivity()
        indicatorManager.addActivity()
        indicatorManager.addActivity()
        indicatorManager.removeActivity()
        XCTAssertTrue(application.isNetworkActivityIndicatorVisible)
    }

    func testManagerShouldConveyStatusesBetweenInstances() {
        let indicatorManager2 = NetworkActivityIndicatorManager(withApplication: application)
        indicatorManager2.addActivity()
        indicatorManager.addActivity()
        indicatorManager2.removeActivity()
        XCTAssertTrue(application.isNetworkActivityIndicatorVisible)
    }

    func testManagerShouldNotSetCounterToNegativeValues() {
        indicatorManager.removeActivity()
        indicatorManager.removeActivity()
        indicatorManager.removeActivity()
        indicatorManager.addActivity()
        XCTAssertTrue(application.isNetworkActivityIndicatorVisible)
    }
}
