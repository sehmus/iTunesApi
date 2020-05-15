//
//  QueryProvider.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation

protocol QueryProvider {
    var queryItem: URLQueryItem { get }
}
