//
//  SKDesignableButton.swift
//  SKDesignableButton
//
//  Created by sk on 2017/04/02.
//  Copyright © 2017 shin-kawani. All rights reserved.
//
import UIKit

@IBDesignable
final public class SKDesignableButton: UIButton {
  
    @IBInspectable public var borderColor :  UIColor = UIColor.blue
    @IBInspectable public var borderWidth : CGFloat = 1.0
    @IBInspectable public var cornerRadius : CGFloat = 5.0
    

    override public func draw(_ rect: CGRect) {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
    }


    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public init(frame:CGRect, title: String, borderColor: UIColor?, borderWidth: CGFloat?, cornerRadius: CGFloat?) {

        super.init(frame:frame)

        if borderColor != nil {
          self.borderColor = borderColor!
        }

        if borderColor != nil {
          self.borderColor = borderColor!
        }

        if borderWidth != nil {
          self.borderWidth = borderWidth!
        }

        if cornerRadius != nil {
          self.cornerRadius = cornerRadius!
        }

        self.setTitle(title, for: .normal)

    }
    

}
