//
//  ReusableView.swift
//  TacoPOP
//
//  Created by jlev on 8/3/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
