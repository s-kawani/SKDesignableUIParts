//
//  SKGradationView.swift
//  SKGradationView
//
//  Created by Shin Kawani on 2017/10/28.
//

import UIKit

@IBDesignable
public final class SKGradationView: UIView {
    
    @IBInspectable public var startColor  :  UIColor = .white
    @IBInspectable public var endColor  : UIColor = .blue

    
    override public func draw(_ rect: CGRect) {
        self.ex.applyGradation(startColor: startColor, endColor: endColor)
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        // do something ...
    }

}


