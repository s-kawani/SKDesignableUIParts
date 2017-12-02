//
//  SKTextFieled.swift
//  FBSnapshotTestCase
//
//  Created by Shin Kawani on 2017/10/26.
//

import UIKit


@IBDesignable
final public class SKTextFieledView: UITextField, UITextFieldDelegate {
    
    @IBInspectable public var borderColor  :  UIColor = UIColor.blue
    @IBInspectable public var borderWidth  : CGFloat = 1.0
    @IBInspectable public var cornerRadius : CGFloat = 5.0
    @IBInspectable public var insetTop     : CGFloat = 0.0
    @IBInspectable public var insetBottomn : CGFloat = 0.0
    @IBInspectable public var insetLeft    : CGFloat = 10.0
    @IBInspectable public var insetRight   : CGFloat = 10.0
    @IBInspectable public var placeholderColor   : UIColor = UIColor.gray
    @IBInspectable public var borderOnlyButtom:Bool = false
    
    public var titleLabel:UILabel?

    override public func draw(_ rect: CGRect) {
        
        self.borderStyle = .none
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        self.tintColor = borderColor
        self.textColor = borderColor
        if let pText = self.placeholder {
            self.attributedPlaceholder = NSAttributedString(string:pText, attributes: [NSAttributedStringKey.foregroundColor: placeholderColor])
        }

        if borderOnlyButtom {
            self.ex.onlyBorderBottom(withColor:borderColor.cgColor)
        }
        
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
        self.borderStyle = .none
        self.delegate = self
    }
    
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(insetTop, insetLeft, insetBottomn, insetRight))
    }
    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(insetTop, insetLeft, insetBottomn, insetRight))
    }
    
    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(insetTop, insetLeft, insetBottomn, insetRight))
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    public var insets = UIEdgeInsetsMake(0, 0, 0, 0)
    override public func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var rect = bounds
        rect.origin.x -= insets.left
        rect.origin.y -= insets.top
        rect.size.width += insets.left + insets.right
        rect.size.height += insets.top + insets.bottom
        
        // 拡大したViewサイズがタップ領域に含まれているかどうかを返します
        return rect.contains(point)
    }

}


