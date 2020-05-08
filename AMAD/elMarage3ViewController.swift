//
//  elMarage3ViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 5/8/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class elMarage3ViewController: UIViewController {

    @IBOutlet weak var contentStackVIew: UIStackView!
    
     @IBOutlet var collection:[UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        addScreenCOntent()
    }
    
    
    private func addScreenCOntent(){
        
        
        collection.forEach { (label) in
            label.rx.anyGesture(.tap())
            .skip(1)
                .subscribe(onNext: { (_) in
                self.openInBrowser(link: label.text!)
            })
        }
        
        
        
//        urls.forEach { (value) in
//            var label = UILabel()
//            label.text = value
//            label.rx.anyGesture(.tap()).subscribe(onNext: { (_) in
//                self.openInBrowser(link: "\(label.text!)")
//            })
//
//            self.contentStackVIew.addArrangedSubview(label)
//        }
        
        
    }

    
    
    
    
    
    private func openInBrowser(link:String){
           guard let url = URL(string: link) else {
            print("wrong url")
            return
        }
           UIApplication.shared.open(url)
       }
    
    

}
