//
//  DefaultResponseParser.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
// MARK: - Default Response Handler


extension ResponseHandler {
    /// generic response data parser
    func defaultParseResponse<T: Response>(data: Data) throws -> T {

        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

        if let body = try? jsonDecoder.decode(T.self, from: data){
            return body
        } else if let errorResponse = try? jsonDecoder.decode(ServiceError.self, from: data) {
            throw errorResponse
        } else {
            throw UnknownParseError()
        }
    }
}
