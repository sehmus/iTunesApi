//
//  UIViewControllerExtension.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 10.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import Foundation
import UIKit

fileprivate var aView : UIView?

public extension UIViewController {
     
    /// Shows Loading Indicator for selected ViewController
    func showLoadingView() {
        if aView != nil {
            removeLoadingView()
        }
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = Constants.Colors.activityIndicatorBackground
        
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator.center = aView!.center
        activityIndicator.startAnimating()
        aView?.addSubview(activityIndicator)
        self.view.addSubview(aView!)
    }
    
    func removeLoadingView() {
        aView?.removeFromSuperview()
        aView = nil
    }
    
    
}
