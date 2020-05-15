//
//  BaseResponseModel.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 12.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation


/// Wrapper response model
struct WrapperResponseModel<T: Codable>: Codable {
    let resultCount: Int?
    let results: [T]?
    
    enum CodinKeys: String, CodingKey {
        case resultCount = "resultCount"
        case results = "results"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodinKeys.self)
        resultCount = try values.decodeIfPresent(Int.self, forKey: .resultCount)
        results = try values.decodeIfPresent([T].self, forKey: .results)
    }
}
