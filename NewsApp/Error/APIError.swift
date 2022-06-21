//
//  APIError.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import Foundation

enum APIError: Error {
    case decodingError
    case serverError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode the object from the service"
        case .errorCode(let code):
            return "\(code) - something went wrong"
        case .serverError:
            return "Server u"
        case .unknown:
            return "The error is unknown"
        }
    }
}
