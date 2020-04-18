//
//  HomeViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/20/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.bringSubviewToFront(menuButton)
    }
    
    @IBAction func openDUmmyScreen(_ sender: Any) {
        self.sideMenuController?.toggle()
    }
    
//    @IBAction func dummyButton(_ sender: Any) {
//
//        print("button clicked")
//    }
    
    
    
    @IBAction func ab7asButtonTapped(_ sender: Any) {
        print("Open Vedios Screen")
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "Leka2atTahomakVC",title: "قصص نجاح مرضي تصلب")
        
        
    }
    
    
    
    @IBAction func toro23lagSa7e7aButtonTapped(_ sender: Any) {
        self.sideMenuController?.toggle()
    }
    
    
    @IBAction func a5ta2Sha23aButtonTapped(_ sender: Any) {
        print("Open Contact Us Screen")
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "contactUsVC",title: "تواصل معنا")
    }
    
    
    
    
    @IBAction func estesharaButtunTapped(_ sender: Any) {
        print("Open Tazker Bel Gor3at Screen")
        // tazker_gor3at
        
        
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "tazker_gor3at",title: "التصلب المتعدد")
        
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "infoVC",title: "التصلب المتعدد")
    }
    
    
    

    
}


