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

open class NetworkActivityIndicatorManager {

    fileprivate static var activitiesCount = 0

    var application: ApplicationProtocol

    public init(withApplication application: ApplicationProtocol) {
        self.application = application
    }

    open func addActivity() {
        if type(of: self).activitiesCount == 0 {
            application.networkActivityIndicatorVisible = true
        }

        type(of: self).activitiesCount += 1
    }

    open func removeActivity() {
        if type(of: self).activitiesCount > 0 {
            type(of: self).activitiesCount -= 1

            if type(of: self).activitiesCount == 0 {
                application.networkActivityIndicatorVisible = false
            }
        }
    }

    func resetActivityCount() {
        type(of: self).activitiesCount = 0
        application.networkActivityIndicatorVisible = false
    }
}
