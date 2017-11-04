//
//  String+SKExtensions.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/10/30.
//

import UIKit

extension String:ExtensionCompatible {}

public extension Extension where Base == String {
    
    public var url: URL? {
        return URL(string: self.base)
    }
    
}
