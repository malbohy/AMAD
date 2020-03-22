//
//  UiViewControllerExtenstion.swift
//  Codable
//
//  Created by Mohamed Elbohy on 4/6/19.
//  Copyright © 2019 Mohamed Elbohy. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    func showAlert(withTitle title:String , message:String , actionTitle:String ,  action completeHandleter:@escaping ()-> Any){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: { action in
            switch action.style{
            case .default:
                print("")
                _ = completeHandleter()
                print("\n\n\n\n\n\n\ndefault action\n\n\n\n\n\n")
            break
            case .cancel:
                
                print("\n\n\n\n\n\n\ncancel action\n\n\n\n\n\n")
                break
            case .destructive:
                break
            @unknown default:
                print("alert unknow action (from alert extenstion)")
            }
        }))
        
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            switch action.style{
            case .default:
                print("")
                _ = completeHandleter()
                print("\n\n\n\n\n\n\ndefault action\n\n\n\n\n\n")
                break
            case .cancel:
                
                print("\n\n\n\n\n\n\ncancel action\n\n\n\n\n\n")
                break
            case .destructive:
                break
            @unknown default:
                print("alert unknow action (from alert extenstion)")
            }
        }))
        
        
        
    }

}


extension NSObjectProtocol{
    func getViewController(fromStoryBoardNamed storyBoardName:String , withIdentifier id:String )-> UIViewController{
        return UIStoryboard.init(name: storyBoardName, bundle: Bundle.main).instantiateViewController(withIdentifier: id)
    }
}


extension UIViewController{
    static func getViewController(fromStoryBoardNamed storyBoardName:String , withIdentifier id:String )-> UIViewController{
        return UIStoryboard.init(name: storyBoardName, bundle: Bundle.main).instantiateViewController(withIdentifier: id)
    }
}







