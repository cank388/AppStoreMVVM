//
//  AppsResponse.swift
//  AppStoreAPI
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
public struct AppsResponse: Decodable {
    
    private enum RootCodingKeys: String, CodingKey {
        case feed
    }
    
    private enum FeedCodingKeys: String, CodingKey {
        case results
    }
    
    public let results: [Apps]
    
    init(results: [Apps]) {
        self.results = results
    }
    
    public init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        let feedContainer = try rootContainer.nestedContainer(keyedBy: FeedCodingKeys.self, forKey: .feed)
        self.results = try feedContainer.decode([Apps].self, forKey: .results)
    }
}
