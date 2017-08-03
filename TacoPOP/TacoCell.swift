//
//  TacoCell.swift
//  TacoPOP
//
//  Created by jlev on 8/3/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView {

    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }
}
