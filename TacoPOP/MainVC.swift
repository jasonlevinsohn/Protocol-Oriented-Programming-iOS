//
//  MainVC.swift
//  TacoPOP
//
//  Created by jlev on 7/27/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }

}
