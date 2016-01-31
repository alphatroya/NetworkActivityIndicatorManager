//
//  NetworkActivityIndicatorManagerTests.swift
//  NetworkActivityIndicatorManagerTests
//
//  Created by Alexey Korolev on 31.01.16.
//  Copyright © 2016 Alexey Korolev. All rights reserved.
//

import Quick
import Nimble
@testable import NetworkActivityIndicatorManager

class ApplicationMock: ApplicationProtocol {
    var networkActivityIndicatorVisible: Bool = false
}

class RGBTests: QuickSpec {
    override func spec() {
        var indicatorManager: NetworkActivityIndicatorManager!
        var application: ApplicationProtocol!

        beforeEach {
            application = ApplicationMock()
            indicatorManager = NetworkActivityIndicatorManager(withApplication: application)
        }
        afterEach {
            indicatorManager.resetActivityCount()
            indicatorManager = nil
            application = nil
        }
        describe("it") {
            it("should show activity indicator after adding activity") {
                indicatorManager.addActivity()
                expect(application.networkActivityIndicatorVisible).to(beTrue())
            }
            it("should hide activity indicator after adding and removing activity") {
                indicatorManager.addActivity()
                indicatorManager.removeActivity()
                expect(application.networkActivityIndicatorVisible).to(beFalse())
            }
        }

    }
}
