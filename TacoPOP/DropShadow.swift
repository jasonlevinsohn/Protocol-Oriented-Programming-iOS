//
//  DropShadow.swift
//  TacoPOP
//
//  Created by jlev on 7/27/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

protocol DropShadow {}


// Let's constrain the protocol extension to a certain type.  Here it must be of type UIView
extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}
