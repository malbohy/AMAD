//
//  HomeViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/20/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

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
    @IBAction func openDUmmyScreen(_ sender: Any) {
        
        let vc = self.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        
        
        let lastScreenData = TemplateScreen(screenTitle:  "المراجع : ", screenContent: ScreensContent().getGeneralGuides())
        vc.screenContent = lastScreenData
        
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
//    func localDummyData()-> [String]{
//        var content:[String] = []
//        for i in 0..<20{
//            print("added data")
//            content.append("\(i)Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy ")
//        }
//        return content
//    }
    
}




//struct screensContent{
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////    func getLastScreen()->[String]{
////        var content:[String] = []
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        content.append("")
////        return content
////    }
//
//
//}
