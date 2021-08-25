//
//  Enviroment.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

enum Environment {

    case development
    case staging
    case production

    func baseURL() -> String {
        return "\(urlProtocol())://\(subdomain()).\(domain())\(route())"
       // return "http://api.rikskampen.se/public/api"
    }
//    https://5fd312718cee610016adfe31.mockapi.io /api/v1/login
    func urlProtocol() -> String {
        switch self {
        case .production:
            return "https"
        default:
            return "https"
        }
    }

    func domain() -> String {
        switch self {
        case .development, .staging, .production:
            return "mockapi.io"
        }
    }

    func subdomain() -> String {
        switch self {
        case .development:
            return "5fd312718cee610016adfe31"
        case .staging:
            return "test.subdomain"
        case .production:
            return "prod.subdomain"
        }
    }

    func route() -> String {
        return "/api/v1/"
    }

}

extension Environment {
    func host() -> String {
        return "\(self.subdomain()).\(self.domain())"
    }
}


// MARK:- APIs

#if DEBUG
let environment: Environment = Environment.development
#else
let environment: Environment = Environment.staging
#endif

let baseUrl = environment.baseURL()

struct Path {
    struct User {

        var registration: String { return "\(baseUrl)/registration" }
        var login: String { return "\(baseUrl)login" }
        var forgotPassword: String { return "\(baseUrl)/forgotPassword" }
        var logout: String { return "\(baseUrl)/logout" }
        var getProfile: String { return "\(baseUrl)/profile" }
        var deleteUser: (Int) -> String = { userID in
            return "\(baseUrl)/profile/\(String(userID))"
        }

        struct Task {
            var getTasks: String { return "\(baseUrl)/tasks" }
            var getTaskDetail: (Int, Int) -> String = { userID, taskID in
               // return "\(baseUrl)/profile/\(String(userID))/task/\(String(taskID))"
                return "\(baseUrl)"
            }
        }
    }

    struct Allergy {
        var getAllAlergies: String { return "\(baseUrl)/allergies" }
    }
}

/*

 baseUrl

 Path().login

 Path.User().getProfile

 Path.User().deleteUser(525)

 Path.User.Task().getTaskDetail(525, 2)

 */
