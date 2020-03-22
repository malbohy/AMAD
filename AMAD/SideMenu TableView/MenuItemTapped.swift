//
//  MenuItemTapped.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import Foundation
import UIKit
class MenuItemTapped {
    var view:UIViewController
    let vc:ViewController?
    init(with view:UIViewController) {
        self.view = view
        vc = self.view.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        vc?.modalPresentationStyle = .fullScreen
    }
    
    
    func MenuTapped(for title:String){
        print("\(title) has been tapped")
        switch title {
            case "مواقع تهمك":
                
                let lastScreenData = TemplateScreen(screenTitle:  "مواقع تهمك : ", screenContent: ScreensContent().getVIPWebSites())
                vc?.screenContent = lastScreenData
                self.view.present(vc!, animated: true, completion: nil)
                break
            default:
                print("no screen found")
        }
        
        
    }
}
