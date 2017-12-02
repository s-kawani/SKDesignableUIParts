//
//  UIView+SKDesignable.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/10/28.
//

extension UIView:ExtensionCompatible {}

public extension Extension where Base:UIView {
    
    private static var classname:String {
        return Base.description().components(separatedBy: ".").last!
    }

    public func applyGradation(startColor:UIColor, endColor:UIColor) {

        let gLayer = CAGradientLayer()
        self.base.layer.insertSublayer(gLayer, at: 0)
        gLayer.colors = [startColor.cgColor, endColor.cgColor]
        gLayer.frame = self.base.bounds

    }
    
    public static func instantiate(withOwner ownerOrNil: Any? = nil) ->Base {
        let nib = UINib(nibName: self.classname, bundle: nil)
        return nib.instantiate(withOwner: ownerOrNil, options: nil)[0] as! Base
    }
    
}


