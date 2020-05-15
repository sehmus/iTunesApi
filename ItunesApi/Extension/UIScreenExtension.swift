//
//  UIScreenExtension.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation
import UIKit

public extension UIScreen {
    
    static func screenSize() -> CGSize {
        return CGSize(width: screenWidth, height: screenHeight)
    }

    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }

    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }

}
