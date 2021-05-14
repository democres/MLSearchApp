//
//  ErrorDefault.swift
//  MLSearchApp
//
//  Created by David Figueroa on 18/04/21.
//

import Foundation

public struct ErrorDefault: Codable {

    public var code: Int
    public var title: String
    public var status: Int

    public init(code: Int, title: String, status: Int) {
        self.code = code
        self.title = title
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case title
        case status
    }
}
