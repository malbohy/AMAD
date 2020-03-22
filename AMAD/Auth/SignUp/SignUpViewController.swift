//
//  SignUpViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    

    @IBAction func signUpTapped(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
   private func setupUI(){
        containerView.applyBorder(width: 2, cornerRadius: 25, borderColor: UIColor(hexString: "fcab2c"))
        signUpButton.applyBorder(width: 0, cornerRadius: 10, borderColor: .clear)
        signUpButton.applyGradient(colours: [UIColor(hexString: "e7e4e4"),UIColor(hexString: "f3f3f3")])

    }
    
}
