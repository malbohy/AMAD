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
    func open(from parent:UIViewController,with storyBoardName:String, ID vcID:String ){
        let vc = parent.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        let childVC = parent.getViewController(fromStoryBoardNamed: storyBoardName, withIdentifier: vcID)
        vc.childView = childVC
        vc.modalPresentationStyle = .fullScreen
        parent.present(vc, animated: true, completion: nil)
    }
    
}
