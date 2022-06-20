//
//  ResultState.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
