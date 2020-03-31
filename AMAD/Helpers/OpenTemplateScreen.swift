//
//  OpenTemplateScreen.swift
//  AMAD
//
//  Created by mohamed albohy on 3/25/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import Foundation
import UIKit
struct OpenTemplateScreen {
    func open(from parent:UIViewController,with storyBoardName:String, ID vcID:String, title:String ){
        let vc = parent.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        let childVC = parent.getViewController(fromStoryBoardNamed: storyBoardName, withIdentifier: vcID)
        vc.screenTitle = title
        vc.childView = childVC
        vc.modalPresentationStyle = .fullScreen
        parent.present(vc, animated: true, completion: nil)
    }
    
    
    
    func getAsVC(from storyBoardName:String, ID vcID:String )-> UIViewController{
        let vc = UIViewController.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        let childVC = UIViewController.getViewController(fromStoryBoardNamed: storyBoardName, withIdentifier: vcID)
        vc.screenTitle = "title"
        vc.childView = childVC
        vc.modalPresentationStyle = .fullScreen
        return vc
//        parent.present(vc, animated: true, completion: nil)
    }
    
    
}
