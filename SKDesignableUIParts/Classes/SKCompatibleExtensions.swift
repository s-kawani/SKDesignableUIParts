//
//  SKGradationViewExtension.swift
//  SKGradationView
//
//  Created by Shin Kawani on 2017/10/28.
//

import UIKit


public struct Extension<Base> {
    public let base: Base
    public init (_ base: Base) {
        self.base = base
    }
}

public protocol ExtensionCompatible {
    associatedtype Compatible
    static var ex: Extension<Compatible>.Type { get }
    var ex: Extension<Compatible> { get }
}

public extension ExtensionCompatible {
    public static var ex: Extension<Self>.Type {
        return Extension<Self>.self
    }
    
    public var ex: Extension<Self> {
        return Extension(self)
    }
}


