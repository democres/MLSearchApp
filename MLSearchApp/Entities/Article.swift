//
//  Article.swift
//  MLSearchApp
//
//  Created by David Figueroa on 12/04/21.
//

import Foundation

public struct ArticleResponse: Codable {
    
    public var results: [Article]
    
    public init(results: [Article]) {
        self.results = results
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case results
    }
}

public struct Article: Codable, Identifiable {
    
    public let id = UUID()
    public var title: String
    public var price: Int
    public var description: String
    public var thumbnail: String
    
    public init(articleId: String, title: String, price: Int, description: String, thumbnail: String) {
        self.title = title
        self.price = price
        self.description = description
        self.thumbnail = thumbnail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case price
        case description = "buying_mode"
        case thumbnail
    }
}
