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
        
        // Do any additional setup after loading the view.
        
////        self.navigationController?.navigationBar.isHidden = false
//        self.navigationController?.navigationBar.isUserInteractionEnabled = false
////        self.sideMenuController?.navigationController?.navigationBar.isHidden = true
////        self.sideMenuController?.sideViewController.navigationController?.navigationBar.isHidden = true
//        print(" current Nav \(self.navigationController)")
//        print(" current Nav \(self.sideMenuController?.navigationController)")
//        print(" current Nav \(self.sideMenuController?.sideViewController.navigationController)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func openDUmmyScreen(_ sender: Any) {
        
//        let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
//
//
//        let lastScreenData = TemplateScreen(screenTitle:  "المراجع : ", screenContent: ScreensContent().getGeneralGuides())
//        vc.screenContent = lastScreenData
//
//
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true, completion: nil)
        
        
        
        self.sideMenuController?.toggle()
        
        
        
    }
    
    @IBAction func dummyButton(_ sender: Any) {
        
        print("button clicked")
    }
    
    
    
    @IBAction func ab7asButtonTapped(_ sender: Any) {
        print("button clicked")
        
        
        OpenTemplateScreen().open(from: self, with: "ContentScreens", ID: "ma_hwa_tasalob",title: "ما هو التصلب المتعدد؟")
        
//        let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
//        //        let lastScreenData = TemplateScreen(screenTitle:  "مواقع تهمك : ", screenContent: ScreensContent().getVIPWebSites())
//        //        vc.screenContent = lastScreenData
//
//
//
//
//                let childVC = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "testingVIew")
//
//
//                vc.childView = childVC
//
//                vc.modalPresentationStyle = .fullScreen
//                self.present(vc, animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func toro23lagSa7e7aButtonTapped(_ sender: Any) {
        print("button clicked")
    }
    
    
    @IBAction func a5ta2Sha23aButtonTapped(_ sender: Any) {
        print("button clicked")
    }
    
    
    
    
    @IBAction func estesharaButtunTapped(_ sender: Any) {
        print("button clicked")
    }
    
    
    
    

    
}


