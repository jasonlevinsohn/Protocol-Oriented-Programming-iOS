//
//  MainVC.swift
//  TacoPOP
//
//  Created by jlev on 7/27/17.
//  Copyright © 2017 L3. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        
        ds.loadDeliciousTacoData()
        ds.tacoArray.shuffle()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
        
        // The old way to add a nib
        //  let nib = UINib(nibName: "TacoCell", bundle: nil)
        //  collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
    }

}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // The old way of doing it without Generics
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        
        // This would be the new way to do it, but for some reason xCode is not recognizing this function as created
        // let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        //cell.configureCell(taco: ds.tacoArray[indexPath.row])
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }

}
