//
//  SupportVCViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/18/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class SupportVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func termsConditions(_ sender: Any) {
        openInBrowser(link: "http://msapp-support.com/index.php/msapp/terms_and_conditions")
    }
    @IBAction func privacyPolicy(_ sender: Any) {
        openInBrowser(link: "http://msapp-support.com/index.php/msapp/privacy_policy")
    }
    
    private func openInBrowser(link:String){
        guard let url = URL(string: link) else { return }
        UIApplication.shared.open(url)
    }
    
    
}
