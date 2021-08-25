//
//  ErrorType.swift
//  BildelBasenClean
//
//  Created by Apple on 10/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import Foundation

// MARK: - Errors

struct ServiceError: Error, Codable {
    let httpStatus: Int
    let message: String
    let description: String?

}

struct NetworkError: Error {
    let message: String
}

struct UnknownParseError: Error { }

public class Downloader {

    fileprivate static let session = URLSession(configuration: URLSessionConfiguration.default)

    fileprivate static let syncQueue = DispatchQueue(label: "Downloader.syncQueue")

    public static func download( from url: URL, completionHandler:@escaping (URL?, URLResponse?, Error?) -> Void ) {

        syncQueue.sync {

            let downloadTask = session.downloadTask(with: url, completionHandler: completionHandler)
            downloadTask.resume()
        }
    }
}
