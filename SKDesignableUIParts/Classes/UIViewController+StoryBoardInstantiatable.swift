//
//  UIViewController+StoryBoardInstantiatable.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/11/10.
//

import UIKit

extension UIViewController:ExtensionCompatible {}

public extension Extension where Base:UIViewController {
    
    private static var classname:String {
        return Base.description().components(separatedBy: ".").last!
    }
    
    public static func instantiate()->Base {

        let storyboard = UIStoryboard(name: classname, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: classname) as! Base
    }
    
    public static func instantiate(withStoryboard storyboard: String)->Base {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: classname) as! Base
    }

}

