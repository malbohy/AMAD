//
//  TableView_Extension.swift
//  Sawa Mall
//
//  Created by mohamed albohy on 7/10/19.
//  Copyright © 2019 unicom. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{
    func resetDataSourceAndDeleget(){
        self.dataSource = nil
        self.delegate = nil
        self.reloadData()
    }
    
    
//    func getViewController(fromStoryBoardNamed storyBoardName:String , withIdentifier id:String )-> UIViewController{
//            return UIStoryboard.init(name: storyBoardName, bundle: Bundle.main).instantiateViewController(withIdentifier: id)
//    }
}




