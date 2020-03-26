//
//  MenuItemTapped.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import Foundation
import UIKit
class MenuItemTapped {
    var view:UIViewController
    let vc:ViewController?
    init(with view:UIViewController) {
        self.view = view
        vc = self.view.getViewController(fromStoryBoardNamed: "Main", withIdentifier: "templateView") as! ViewController
        vc?.modalPresentationStyle = .fullScreen
    }
    
    
    func MenuTapped(for title:String){
        print("\(title)")
        print("has been tapped")
        let menuName =  title.trimmingCharacters(in: .whitespacesAndNewlines)
        switch menuName {
        case "ما هو التصلب اللويحي المتعدد؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "ma_hwa_tasalob",title: "ما هو التصلب المتعدد؟")
            break
        case "ماهي الهجمة؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "ma_hya_el_hagma",title: "ماهي الهجمة؟")
            break
        case "ماهي أعراض التصلب؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "a3rad_el_tasalob",title: "الأعراض الرئيسية للتصلب المتعدد")
            break
            
        case "كيف يتم تشخيص التصلب؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "tash5es_tasalob",title: "التشخيص")
            break
            
        case "ما هي أنواع التصلب؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "anwa3_tasalob",title: "أنواع التصلب المتعدد")
            break
            
        case "من هم المعرضون للتصلب؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "mo3aradon_ll_tasalob",title: "من هم الأشخاص الأكثر عرضة للإصابة بالتصلب المتعدد؟")
            break
            
        case "ماهي أسباب التصلب؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "asbab_tasalob",title: "أسباب التصلب المتعدد")
            break
        case "كيف يتعايش المصاب مع المرض؟":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "ta3ayosh_m3a_tasalob",title: "التعايش")
            break
        default:
            print("\(title)")
            print("no screen found")
        }
        
        
    }
}
