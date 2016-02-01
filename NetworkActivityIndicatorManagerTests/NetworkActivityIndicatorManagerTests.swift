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

class NetworkActivityIndicatorManagerTests: QuickSpec {
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
        describe("manager") {
            it("should show activity indicator after adding activity") {
                indicatorManager.addActivity()
                expect(application.networkActivityIndicatorVisible).to(beTrue())
            }
            it("should hide activity indicator after adding and removing activity") {
                indicatorManager.addActivity()
                indicatorManager.removeActivity()
                expect(application.networkActivityIndicatorVisible).to(beFalse())
            }
            it("should add activity if adding of activities greater that removing") {
                indicatorManager.addActivity()
                indicatorManager.addActivity()
                indicatorManager.addActivity()
                indicatorManager.removeActivity()
                expect(application.networkActivityIndicatorVisible).to(beTrue())
            }
            it("should convey statuses between instances") {
                let indicatorManager2 = NetworkActivityIndicatorManager(withApplication: application)
                indicatorManager2.addActivity()
                indicatorManager.addActivity()
                indicatorManager2.removeActivity()
                expect(application.networkActivityIndicatorVisible).to(beTrue())
            }
            it("should not set counter to negative values") {
                indicatorManager.removeActivity()
                indicatorManager.removeActivity()
                indicatorManager.removeActivity()
                indicatorManager.addActivity()
                expect(application.networkActivityIndicatorVisible).to(beTrue())
            }
        }

    }
}
