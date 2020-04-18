//
//  SocialMediaViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/18/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class SocialMediaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func twitterButton(_ sender: Any) {
        openInBrowser(link: "https://twitter.com/arfams")
    }
    
    
    @IBAction func fbButton(_ sender: Any) {
        openInBrowser(link: "https://www.facebook.com/104443944368448/posts/105965120882997/?substory_index=0")
    }
    
    @IBAction func instagramButton(_ sender: Any) {
        openInBrowser(link: "https://www.instagram.com/arfa_ms/")
    }
    
    
    private func openInBrowser(link:String){
        guard let url = URL(string: link) else { return }
        UIApplication.shared.open(url)
    }
    
    

}
