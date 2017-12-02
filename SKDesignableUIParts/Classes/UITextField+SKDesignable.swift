//
//  UIButton+SKUIExtension.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/11/04.
//


public extension Extension where Base:UITextField {
    
    public func onlyBorderBottom(withColor:CGColor) {
        self.base.layer.borderColor = UIColor.clear.cgColor
        let layer = CALayer()
        layer.borderWidth = 0;
        layer.borderColor = UIColor.clear.cgColor
        layer.backgroundColor = withColor
        layer.frame = CGRect(x: 0, y: self.base.frame.height, width: self.base.frame.width, height: self.base.layer.borderWidth)
        
        self.base.layer.addSublayer(layer)
        
    }
    
}
