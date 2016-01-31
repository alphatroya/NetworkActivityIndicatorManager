//
//  NetworkActivityIndicatorManager.swift
//  NetworkActivityIndicatorManager
//
//  Created by Alexey Korolev on 31.01.16.
//  Copyright © 2016 Alexey Korolev. All rights reserved.
//

import UIKit

extension UIApplication: ApplicationProtocol {

}

public protocol ApplicationProtocol {
    var networkActivityIndicatorVisible: Bool { get set }
}

public class NetworkActivityIndicatorManager {

    private static var activitiesCount = 0

    var application: ApplicationProtocol

    public init(withApplication application: ApplicationProtocol) {
        self.application = application
    }

    public func addActivity() {
        if self.dynamicType.activitiesCount == 0 {
            application.networkActivityIndicatorVisible = true
        }

        self.dynamicType.activitiesCount++
    }

    public func removeActivity() {
        if self.dynamicType.activitiesCount > 0 {
            self.dynamicType.activitiesCount--

            if self.dynamicType.activitiesCount == 0 {
                application.networkActivityIndicatorVisible = false
            }
        }
    }

    func resetActivityCount() {
        self.dynamicType.activitiesCount = 0
        application.networkActivityIndicatorVisible = false
    }
}
