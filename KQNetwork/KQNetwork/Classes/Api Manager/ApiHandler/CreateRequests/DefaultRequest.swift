//
//  DefaultRequest.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class DefaultRequest: RequestBuilder {

    func setHeaders(request: inout URLRequest) {
        // header params
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    }
}
