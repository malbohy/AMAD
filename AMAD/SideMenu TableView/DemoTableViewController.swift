//
//  DemoTableViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/21/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import ExpandableTableViewController

class DemoTableViewController: ExpandableTableViewController, ExpandableTableViewDelegate {
    
    var screenContent:[MenuItem] = []
    var menuTapped:MenuItemTapped?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.expandableTableView.expandableDelegate = self
        screenContent = SideMenuContent().getContent()
        self.expandableTableView.backgroundColor = UIColor(hexString: "fcab2c")
        menuTapped = MenuItemTapped(with: self)
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return screenContent.count
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> UITableViewCell {
        let cell = expandableTableView.dequeueReusableCellWithIdentifier("head", forIndexPath: expandableIndexPath) as! MenuHeaderTableViewCell
        cell.configureCell(with: screenContent[expandableIndexPath.row])
        return cell
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 50
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, estimatedHeightForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 1
    }
        
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfSubRowsInRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> Int {
        return screenContent[expandableIndexPath.row].menuSubItems.count
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, subCellForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> UITableViewCell {
        let cell = expandableTableView.dequeueReusableCellWithIdentifier("body", forIndexPath: expandableIndexPath) 

        (cell.contentView.viewWithTag(2) as! UILabel).text = screenContent[expandableIndexPath.row].menuSubItems[expandableIndexPath.subRow]
        
        
        
        cell.backgroundColor = .clear
        return cell
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 30.5
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, estimatedHeightForSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 1
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) {
//        print("general row pressed")
        
        
        if screenContent[expandableIndexPath.row].menuSubItems.count == 0{
            self.menuTapped?.MenuTapped(for: screenContent[expandableIndexPath.row].menuTitle)
            
            
//            let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
//            let lastScreenData = TemplateScreen(screenTitle:  "مواقع تهمك : ", screenContent: ScreensContent().getVIPWebSites())
//            vc.screenContent = lastScreenData
//
//
//            vc.modalPresentationStyle = .fullScreen
//            self.present(vc, animated: true, completion: nil)
        }
        
        

    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) {
//        print("sub row pressed")
        self.menuTapped?.MenuTapped(for: screenContent[expandableIndexPath.row].menuSubItems[expandableIndexPath.subRow])
//        print(screenContent[expandableIndexPath.row].menuSubItems[expandableIndexPath.subRow])
        
        
    }
}



