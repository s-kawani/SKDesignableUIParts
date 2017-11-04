//
//  Collection+SKExtensions.swift
//  SKDesignableUIParts
//
//  Created by Shin Kawani on 2017/10/30.
//

public extension Collection {

    subscript(safe index: Index) -> Element? {
        if (startIndex <= index && index < endIndex) {
            return self[index]
        } else {
            return nil
        }
    }
    
}
