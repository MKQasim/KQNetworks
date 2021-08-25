//
//  AppShared.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

final class AppShared {

    // MARK: - Singleton
    static func shared(userDefaults: UserDefaults = .standard) -> AppShared {

        if self.shared == nil {
            self.shared = AppShared(userDefaults: userDefaults)
        }
        return self.shared
    }

    private static var shared: AppShared!

    private init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }

    // MARK: - Properties

    // Constants
    private let authTokenKey = "AuthorizationToken"
    private let localAuthenticationKey = "localAuthenticationKey"

    let userDefaults: UserDefaults

    var token: String? = "2xoAeneanlaciniabibendumnullasedconsectetur."

    func clearSharedData() {

    }


}

