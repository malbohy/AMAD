//
//  A3rad_TasalobViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/7/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class A3rad_TasalobViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    @IBOutlet weak var slides: UICollectionView!
    @IBOutlet weak var stackVIew: UIStackView!
    @IBOutlet weak var stackViewHight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides.dataSource = self
        slides.delegate = self
        
        //        slidesHight.constant = self.view.frame.size.height / 3
//        stackViewHight.constant = self.view.frame.size.height - 200
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        case 0: return getCell(with: "firstCell", for: indexPath)
        case 1: return getCell(with: "cell2", for: indexPath)
        case 2: return getCell(with: "cell3", for: indexPath)
//        case 3: return getCell(with: "cell4", for: indexPath)
//        case 4: return getCell(with: "cell5", for: indexPath)
//        case 5: return getCell(with: "cell6", for: indexPath)
//        case 6: return getCell(with: "cell7", for: indexPath)
//        case 7: return getCell(with: "cell8", for: indexPath)
//        case 8: return getCell(with: "cell9", for: indexPath)
//        case 9: return getCell(with: "cell10", for: indexPath)
//        case 10: return getCell(with: "cell11", for: indexPath)
//        case 11: return getCell(with: "cell12", for: indexPath)
//        case 12: return getCell(with: "cell13", for: indexPath)
//        case 13: return getCell(with: "cell14", for: indexPath)
//        case 14: return getCell(with: "cell15", for: indexPath)
//        case 15: return getCell(with: "cell16", for: indexPath)
//        case 16: return getCell(with: "cell17", for: indexPath)
//        case 17: return getCell(with: "cell18", for: indexPath)
            
            
            
            
        default: return getCell(with: "cell3", for: indexPath)
        }
        
    }
    
    
    
    func getCell(with name:String, for indexPath:IndexPath)->UICollectionViewCell{
        
        let cell = slides.dequeueReusableCell(withReuseIdentifier: name, for: indexPath)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
    }
    
}
