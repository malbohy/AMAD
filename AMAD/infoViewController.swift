//
//  infoViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/18/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class infoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func contactUSButtonTapped(_ sender: Any) {
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "contactUsVC",title: "تواصل معنا")
    }
    
    
    @IBAction func socialMediaButtonTapped(_ sender: Any) {
        //
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "socialMedia",title: "مواقع التواصل الاجتماعي")
    }
    
    @IBAction func al_marag3_button_tapped(_ sender: Any) {
        //
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "refVC",title: "المراجع")
    }
    
    
    @IBAction func supportButtonTapped(_ sender: Any) {
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "supportVC",title: "الدعم")
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
