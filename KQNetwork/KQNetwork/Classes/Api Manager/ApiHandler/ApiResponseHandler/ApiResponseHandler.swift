//
//  ApiResponseHandler.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

public protocol ResponseHandler {

        associatedtype ResponseDataType:Decodable

     func parseResponse(data: Data) throws -> ResponseDataType?
}

// MARK: - Response
public protocol Response: Codable {
    var code: Int{get set}
    var message: String?{get set}
}

