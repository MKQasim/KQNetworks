//
//  RequestBuilder.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

protocol RequestBuilder {
    func setHeaders(request: inout URLRequest)
}
