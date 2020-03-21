//
//  SideMenuViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/21/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import SideMenuController
class RootViewController: SideMenuController {

    required init?(coder aDecoder: NSCoder) {
        SideMenuController.preferences.drawing.menuButtonImage = UIImage(named: "logo")
        SideMenuController.preferences.drawing.sidePanelPosition = .overCenterPanelRight
        SideMenuController.preferences.drawing.sidePanelWidth = 300
        SideMenuController.preferences.drawing.centerPanelShadow = true
        SideMenuController.preferences.animating.statusBarBehaviour = .showUnderlay
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "embedInitialCenterController", sender: nil)
        performSegue(withIdentifier: "embedSideController", sender: nil)
    }
}
