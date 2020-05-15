//
//  StringExtension.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation



public extension String {
    
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
}

