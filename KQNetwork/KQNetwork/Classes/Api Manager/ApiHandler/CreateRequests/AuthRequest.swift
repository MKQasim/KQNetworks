//
//  AuthRequest.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation


class AuthRequest: DefaultRequest {
    override func setHeaders(request: inout URLRequest) {

        super.setHeaders(request: &request)
        let nameAndToken = ""//Defaults.getUserIdAndAuthToken()
        let token = "Bearer " 
        print(token)
        // Auth Headers
        request.setValue(token, forHTTPHeaderField: "Authorization")
        print(token)
    }
}
