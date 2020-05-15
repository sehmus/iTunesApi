//
//  EmptyIndicatorView.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 13.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import UIKit



/// Emty place holder view wrapper.
@IBDesignable class EmptyIndicatorView: UIView {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    @IBInspectable var message: String = "emptyindicatorview.default.title".localized {
           didSet {
            lblMessage.text = self.message
           }
       }
    
    @IBInspectable var image: UIImage = UIImage(named: "magnifier_icon")! {
        didSet {
            imgIcon.image = self.image
        }
    }
    

    public override init(frame: CGRect){
        super.init(frame: frame)
        self.loadView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadView()
    }
    
    
    fileprivate func loadView() {
        let view = Bundle(for: EmptyIndicatorView.self).loadNibNamed(self.className, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
        
        
        message = "emptyindicatorview.default.title".localized
    }
    
    
    override open func layoutSubviews() {
        super.layoutSubviews()

    }

}
