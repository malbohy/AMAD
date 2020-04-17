//
//  SideMenuContent.swift
//  AMAD
//
//  Created by mohamed albohy on 3/21/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import Foundation
struct SideMenuContent {
    
    func getContent()->[MenuItem]{
        var menu:[MenuItem] = []
        menu.append(getItem1())
        menu.append(getItem2())
        menu.append(getItem3())
        menu.append(getItem4())
        menu.append(getItem5())
        menu.append(getItem6())
//        menu.append(getItem7())
        menu.append(getItem8())
//        menu.append(getItem9())
        
        return menu
        
    }
    
    
    private func getItem1()->MenuItem{
        var item = MenuItem(menuTitle: "القسم الطبي", menuSubItems: [])
        item.menuSubItems.append("ما هو التصلب اللويحي المتعدد؟")
        item.menuSubItems.append("ماهي الهجمة؟")
        item.menuSubItems.append("ماهي أعراض التصلب؟")
        item.menuSubItems.append("كيف يتم تشخيص التصلب؟")
        item.menuSubItems.append("ما هي أنواع التصلب؟")
        item.menuSubItems.append("من هم المعرضون للتصلب؟")
        item.menuSubItems.append("ماهي أسباب التصلب؟")
        item.menuSubItems.append("ما هي الأدوية المتوفرة للمصابين؟")
        item.menuSubItems.append("كيف يتعايش المصاب مع المرض؟ ")
        return item
    }
    
    private func getItem2()->MenuItem{
        var item = MenuItem(menuTitle: "النمط الحياتي", menuSubItems: [])
        item.menuSubItems.append("العلاج الطبيعي")
        item.menuSubItems.append("العلاج الوظيفي")
        item.menuSubItems.append("العلاج الترفيهي")
        item.menuSubItems.append("العلاج بالفن")
        item.menuSubItems.append("التغذية العلاجية")
        item.menuSubItems.append("الرياضة العلاجية")
        item.menuSubItems.append("التنفس البطني")
        item.menuSubItems.append("الصحة النفسية")
        return item
    }
    
    private func getItem3()->MenuItem{
        let item = MenuItem(menuTitle: "تمارين التأمل والاسترخاء", menuSubItems: [])
        return item
    }
    
    private func getItem4()->MenuItem{
        let item = MenuItem(menuTitle: "تمارين تقوية الذاكرة والتركيز", menuSubItems: [])
        return item
    }
    
    private func getItem5()->MenuItem{
        var item = MenuItem(menuTitle: "لقاءات (طبيب – مصاب)", menuSubItems: [])
        item.menuSubItems.append("قصص نجاح مرضى التصلب")
        item.menuSubItems.append("طبيب مهتم")
        return item
    }
    
    private func getItem6()->MenuItem{
        let item = MenuItem(menuTitle: "إرشادات هامة", menuSubItems: [])
        return item
    }

    private func getItem7()->MenuItem{
        var item = MenuItem(menuTitle: "خدمة مصاب", menuSubItems: [])
        item.menuSubItems.append("أريد زيارة")
        item.menuSubItems.append("عمل شكوى")
        item.menuSubItems.append("طلب استشارة")
        item.menuSubItems.append("طلب أدوات")
        return item
    }
    
    private func getItem8()->MenuItem{
        let item = MenuItem(menuTitle: "مواقع تهمك", menuSubItems: [])
        return item
    }
    
    private func getItem9()->MenuItem{
        let item = MenuItem(menuTitle: "الاخطاء الشائعه", menuSubItems: [])
        return item
    }
    
}
