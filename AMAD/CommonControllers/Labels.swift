//
//  TitleLabel.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import Foundation
import UIKit

class TitleLabel :UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        fontStyle()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fontStyle()
    }

    func fontStyle(){
        self.font = UIFont(name: "HelveticaNeue-UltraLight", size: 30)
    }

}



class SideMenuLabel :UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        fontStyle()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fontStyle()
    }

    func fontStyle(){
        self.font = UIFont(name: "HelveticaNeue-UltraLight", size: 16)
    }

}


class SideMenuSubItemLabel :UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        fontStyle()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fontStyle()
    }

    func fontStyle(){
        self.font = UIFont(name: "HelveticaNeue-UltraLight", size: 14)
    }

}




//class customLabel:UILabel{
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        fontStyle()
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        fontStyle()
//    }
//
//
//    func fontStyle(){
//        self.font = UIFont(name: "HelveticaNeue-UltraLight", size: 30)
//        //self.textColor = self.settings.primaryColor
////        self.textColor = self.settings.primaryColor
////
////        if self.state == .primary {
////            self.textColor = self.settings.primaryColor
////        } else {
////            self.textColor = self.settings.primaryColor
////        }
//
//        //TODO:: add the needed font
//    }
//
//}
