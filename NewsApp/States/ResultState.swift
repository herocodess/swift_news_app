//
//  ResultState.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import Foundation

enum ResultState: Equatable {
    static func == (lhs: ResultState, rhs: ResultState) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading):
            return true
        case (.failed(error: let lhsError), .failed(error: let rhsError)):
            return lhsError.localizedDescription == rhsError.localizedDescription
        case (.success(content: let lhsSuccess), .success(content: let rhsSuccess)):
            return lhsSuccess == rhsSuccess
        default:
            return false
        }
    }
    
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
