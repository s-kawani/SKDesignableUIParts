//
//  UITableView+Util.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/11/09.
//

import UIKit


public extension Extension where Base:UITableView {
    
    public func register<T: UITableViewCell>(cellType: T.Type) {
        
        let className = cellType.className
        let nib = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forCellReuseIdentifier: className)

    }
    
    public func register<T:UITableViewCell>(cellTypes: [T.Type]) {
        cellTypes.forEach {register(cellType: $0)}
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.base.dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
    
}
