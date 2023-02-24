//
//  IMDBSearch.swift
//  IMDBApp
//
//  Created by Ethan Lee on 1/31/23.
//

import Foundation

// MARK: - IMDBSearch
struct IMDBSearch: Codable {
    let searchType, expression: String
    let results: [Movie]
    let errorMessage: String
}

// MARK: - Result
struct Movie: Codable {
    let id, resultType: String
    let image: String
    let title, description: String
}
