//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by jlev on 8/3/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
