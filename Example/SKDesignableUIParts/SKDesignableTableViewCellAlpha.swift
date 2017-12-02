//
//  SKDesignableTableViewCellAlpha.swift
//  SKDesignableUIParts_Example
//
//  Created by Shin Kawani on 2017/11/20.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SKDesignableTableViewCellAlpha: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
