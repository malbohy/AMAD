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
        case "العلاج الطبيعي":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el3lag_el_tabe3y",title: "العلاج الطبيعي")
            break
            
        case "العلاج الوظيفي":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el3lag_el_wazefy",title: "العلاج الوظيفي")
            break
            
        case "العلاج الترفيهي":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el3lag_el_tarfehy",title: "العلاج الترفيهي")
            break
            
        case "العلاج بالفن":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el3lag_bl_fan",title: "العلاج بالفــــن")
            break
            
        case "التغذية العلاجية":
            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el_ta8zaya_el_3lagya",title: "التغذية العلاجية")
            break
            
//        case "الرياضة العلاجية":
//            OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el_ta8zaya_el_3lagya",title: "التغذية العلاجية")
//            break
        
            case "الصحة النفسية":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "el_se7a_el_nafsya",title: "الصحة النفسية")
            break
            
        case "تمارين التأمل والاسترخاء":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "tmareen_ta2mol_estr5a2",title: "تمارين التأمل والاسترخاء")
            break
            
            case "تمارين تقوية الذاكرة والتركيز":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "tmareen_zakera_tarkez",title: "تمارين تقوية الذاكرة والتركيز")
            break
            
            case "إرشادات هامة":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "ershadat_hama",title: "إرشادات هامة")
            break

            case "مواقع تهمك":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "wbsites",title: "مواقع تهمك")
            break
            
            case "التنفس البطني":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "tanfos_botenty",title: "التنفس البطني")
            break
            
            case "الرياضة العلاجية":
                OpenTemplateScreen().open(from: self.view, with: "ContentScreens", ID: "ryada_3lagya",title: "تمرينات خاصة بالأطراف العليا")
            break
            
            
            
            
            
            
            
            
            
            
            
            
        default:
            print("\(title)")
            print("no screen found")
        }
        
        
    }
}
