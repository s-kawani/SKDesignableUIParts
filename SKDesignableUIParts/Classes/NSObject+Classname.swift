//
//  NSObject+Classname.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/11/09.
//

import UIKit

public extension NSObject {
    
    public static var className:String {
        
        return String.init(describing:self)
    }
    
    public var className:String {
        return type(of: self).className
    }
    
}
