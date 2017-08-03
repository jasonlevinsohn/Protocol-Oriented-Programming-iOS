//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by jlev on 8/3/17.
//  Copyright © 2017 L3. All rights reserved.
//

import Foundation

// Only where a MutableCollection has an index of an integer are we going to extend it.
extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}