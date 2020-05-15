//
//  Routing.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation

/// iTunes Search and Lookup Service Routing Class
protocol Routing {
    var base: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Routing {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.queryItems = queryItems
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum Itunes {
    case search(term: String, media: ItunesMedia?, limit: Int = Constants.Limits.defaultLimit)
    case lookup(id: Int, entity: QueryEntity?)
}

extension Itunes: Routing {
    var base: String {
        return Constants.Service.baseUrl
    }
    
    var path: String {
        switch self {
        case .search: return Constants.Service.search
        case .lookup: return Constants.Service.lookup
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .search(let term, let media, let limit):
            var result = [URLQueryItem]()
            
            let searchTermItem = URLQueryItem(name: "term", value: term)
            result.append(searchTermItem)
            
            if let media = media {
                let mediaItem = URLQueryItem(name: "media", value: media.description)
                result.append(mediaItem)
                
                if let entityQueryItem = media.entityQueryItem {
                    result.append(entityQueryItem)
                }
                
                if let attributeQueryItem = media.attributeQueryItem {
                    result.append(attributeQueryItem)
                }
            }
            
            let limitItem = URLQueryItem(name: "limit", value: "\(limit)")
            result.append(limitItem)
            
            return result
        case .lookup(let id, let entity):
            return [
                URLQueryItem(name: "id", value: id.description),
                URLQueryItem(name: "entity", value: entity?.entityName)
            ]
        }
    }
}
