//
//  FilterType.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 12.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation

public enum FilterType: Int {
    case song, movie, podcast, all
}

extension FilterType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .song:
            return "filter.type.song".localized
        case .movie:
            return "filter.type.movie".localized
        case .podcast:
            return "filter.type.podcast".localized
        case .all:
            return "filter.type.all".localized
        }
    }
    
    
}
