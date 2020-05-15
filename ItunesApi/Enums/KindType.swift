//
//  KindType.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 12.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation


public enum KindType: String, Codable {
    case book, album, pdf, podcast, song, artist
    case coached_audio = "coached-audio"
    case feature_movie = "feature-movie"
    case interactive_booklet = "interactive-booklet"
    case music_video = "music-video"
    case podcast_episode = "podcast-episode"
    case software_package = "software-package"
    case tv_episode = "tv-episode"
    case unknown
    
    public init(from decoder: Decoder) throws {
        self = try KindType(rawValue: decoder.singleValueContainer().decode(RawValue.self)) ?? .unknown
       }
}



