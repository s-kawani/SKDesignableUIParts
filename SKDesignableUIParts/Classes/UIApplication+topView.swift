//
//  UIApplication+topView.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/11/20.
//

import UIKit

extension UIApplication:ExtensionCompatible {}

public extension Extension where Base:UIApplication {
    
    var topViewController:UIViewController? {
        
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        
        return topViewController
        
    }
    
    var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }

}
