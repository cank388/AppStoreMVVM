//
//  AppsService.swift
//  AppStoreAPI
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import Alamofire

public protocol AppsServiceProtocol {
    func fetchApps(completion: @escaping (Result<AppsResponse>) -> Void)
}

public class AppsService: AppsServiceProtocol {
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() { }
    
    public func fetchApps(completion: @escaping (Result<AppsResponse>) -> Void) {
        let urlString = "https://rss.itunes.apple.com/api/v1/tr/ios-apps/new-apps-we-love/all/25/explicit.json"
        
        request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(AppsResponse.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
}
