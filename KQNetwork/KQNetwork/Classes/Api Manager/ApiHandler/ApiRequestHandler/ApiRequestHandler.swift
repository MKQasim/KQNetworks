//
//  ApiRequestHandler.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

protocol RequestHandler {

    associatedtype RequestDataType

    func makeRequest(from data: RequestDataType) -> Request
}

// MARK: - SetParameters

extension RequestHandler {

    /// prepares httpbody
    func set(_ parameters: [String: Any], urlRequest: inout URLRequest) {
        // http body
        if parameters.count != 0 {
            if let jsonData = try? JSONSerialization.data(withJSONObject: parameters, options: []) {
                urlRequest.httpBody = jsonData
            }
        }
    }
}
