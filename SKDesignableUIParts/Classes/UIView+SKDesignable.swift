//
//  UIView+SKDesignable.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/10/28.
//

extension UIView:ExtensionCompatible {}

public extension Extension where Base:UIView {
    
    public func applyGradation(startColor:UIColor, endColor:UIColor) {

        let gLayer = CAGradientLayer()
        self.base.layer.insertSublayer(gLayer, at: 0)
        gLayer.colors = [startColor.cgColor, endColor.cgColor]
        gLayer.frame = self.base.bounds

    }
    
}


