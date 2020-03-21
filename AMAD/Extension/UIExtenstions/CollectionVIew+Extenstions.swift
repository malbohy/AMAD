//
//  CollectionVIew+Extenstions.swift
//  Mohamed-Elbohy-Task
//
//  Created by mohamed albohy on 10/15/19.
//  Copyright © 2019 Pay Mob Solutions. All rights reserved.
//

import Foundation
import UIKit


extension UICollectionView{
    func cellEstimatedSize(width:Double , height:Double ){
        let flowLayout = self.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.estimatedItemSize = CGSize(width: width, height: height)
    }
}
