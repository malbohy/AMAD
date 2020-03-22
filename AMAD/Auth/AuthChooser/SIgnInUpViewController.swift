//
//  SIgnInUpViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class SIgnInUpViewController: UIViewController {

    
    
    @IBOutlet weak var ButtonContainer: UIView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        
        
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let vc = self.getViewController(fromStoryBoardNamed: "Auth", withIdentifier: "SIgnUpVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let vc = self.getViewController(fromStoryBoardNamed: "Auth", withIdentifier: "LoginVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    private func setupUI(){
        ButtonContainer.applyBorder(width: 0, cornerRadius: 25, borderColor: .clear)
        
        ButtonContainer.applyGradient(colours: [UIColor(hexString: "fcab2c"),
                                                UIColor(hexString: "eb8609")])
        registerButton.applyBorder(width: 0, cornerRadius: 15, borderColor: .clear)
        loginButton.applyBorder(width: 0, cornerRadius: 15, borderColor: .clear)
    }
    
}
