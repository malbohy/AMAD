//
//  LoginViewController.swift
//  ExpandableTableViewController
//
//  Created by mohamed albohy on 3/22/20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
        print("login did load")
    }
    
    
    
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        print("login button tapped")
        
        let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "sideMenu")

//
//        let lastScreenData = TemplateScreen(screenTitle:  "المراجع : ", screenContent: ScreensContent().getGeneralGuides())
//        vc.screenContent = lastScreenData

        
        
        

        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
    
    
    private func setupUI(){
        containerView.applyBorder(width: 2, cornerRadius: 25, borderColor: UIColor(hexString: "fcab2c"))
        
//        containerView.applyGradient(colours: [UIColor(hexString: "fcab2c"),
//                                                UIColor(hexString: "eb8609")])
        loginButton.applyBorder(width: 0, cornerRadius: 10, borderColor: .clear)
        loginButton.applyGradient(colours: [UIColor(hexString: "e7e4e4"),UIColor(hexString: "f3f3f3")])
//        registerButton.applyBorder(width: 0, cornerRadius: 15, borderColor: .clear)
//        loginButton.applyBorder(width: 0, cornerRadius: 15, borderColor: .clear)
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "sideMenu")
        
        let systemVersion = Double(UIDevice.current.systemVersion)!
        
        print(systemVersion)
        if systemVersion <= 12.4{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
             appDelegate.window!.rootViewController = vc
        }else{
            UIApplication.shared.windows.first?.rootViewController = vc
        }
        
        
        

    }
}
