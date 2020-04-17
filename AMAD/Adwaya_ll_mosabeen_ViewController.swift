//
//  Adwaya_ll_mosabeen_ViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/17/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class Adwaya_ll_mosabeen_ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var slides: UICollectionView!
   @IBOutlet weak var stackVIew: UIStackView!
   @IBOutlet weak var stackViewHight: NSLayoutConstraint!
           override func viewDidLoad() {
               super.viewDidLoad()
                   
               slides.dataSource = self
               slides.delegate = self
               
       //        slidesHight.constant = self.view.frame.size.height / 3
               stackViewHight.constant = self.view.frame.size.height - 200
               // Do any additional setup after loading the view.
           }
           
           
           func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                 return 2
             }
             
             func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                 
                 switch indexPath.row {
                   case 0: return getCell(with: "firstCell", for: indexPath)
                   case 1: return getCell(with: "cell2", for: indexPath)
//                   case 2: return getCell(with: "cell3", for: indexPath)
//                   case 3: return getCell(with: "cell4", for: indexPath)
//                   case 4: return getCell(with: "cell5", for: indexPath)
//                   case 5: return getCell(with: "cell6", for: indexPath)
//                   case 6: return getCell(with: "cell7", for: indexPath)
//                   case 7: return getCell(with: "cell8", for: indexPath)
//                   case 8: return getCell(with: "cell9", for: indexPath)
//                   case 9: return getCell(with: "cell10", for: indexPath)
//                   case 10: return getCell(with: "cell11", for: indexPath)
//                   case 11: return getCell(with: "cell12", for: indexPath)
//                   case 12: return getCell(with: "cell13", for: indexPath)
//                   case 13: return getCell(with: "cell14", for: indexPath)
//                   case 14: return getCell(with: "cell15", for: indexPath)
//                   case 15: return getCell(with: "cell16", for: indexPath)
//                   case 16: return getCell(with: "cell17", for: indexPath)
//                   case 17: return getCell(with: "cell18", for: indexPath)
//                   case 18: return getCell(with: "cell19", for: indexPath)
//                   case 19: return getCell(with: "cell20", for: indexPath)
//                   case 20: return getCell(with: "cell21", for: indexPath)
//                   case 21: return getCell(with: "cell22", for: indexPath)
//                   case 22: return getCell(with: "cell23", for: indexPath)
//                   case 23: return getCell(with: "cell24", for: indexPath)
//                   case 24: return getCell(with: "cell25", for: indexPath)
//                   case 25: return getCell(with: "cell26", for: indexPath)
//                   case 26: return getCell(with: "cell27", for: indexPath)
//                   case 27: return getCell(with: "cell28", for: indexPath)
                   
                     
                 
                     
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
