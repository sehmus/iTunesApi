//
//  UIImageExtension.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 12.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation
import UIKit


public extension UIImageView {
    func loadImageFromUrl(url : String) {
        guard let imageURL = URL(string: url) else { return }

        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: imageURL) else { return }

            let image = UIImage(data: imageData)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
