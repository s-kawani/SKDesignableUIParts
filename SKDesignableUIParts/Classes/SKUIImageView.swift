//
//  UIButton+SKDesignable.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/12/26.
//

import UIKit

@IBDesignable
final public class SKUIImageView: UIImageView {

    @IBInspectable public var cornerRadius : CGFloat = 5.0

    override public func draw(_ rect: CGRect) {
        
        layer.cornerRadius = cornerRadius

    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public init(frame:CGRect, title:String) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
    }
    
}
