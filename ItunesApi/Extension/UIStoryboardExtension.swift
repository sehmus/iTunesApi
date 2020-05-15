//
//  UIStoryboardExtension.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation
import UIKit

public extension UIStoryboard {

    static var main: UIStoryboard {
        let bundle = Bundle.main
        guard let storyboardName = bundle.object(forInfoDictionaryKey: "UIMainStoryboardFile") as? String else {
            fatalError("No main storyboard set in your app.")
        }
        return  UIStoryboard(name: storyboardName, bundle: bundle)
    }
    
}

