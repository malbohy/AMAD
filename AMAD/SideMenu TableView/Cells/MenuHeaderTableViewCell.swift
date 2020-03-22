//
//  MenuHeaderTableViewCell.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class MenuHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var title: SideMenuLabel!
    private var item:MenuItem = MenuItem(menuTitle: "", menuSubItems: [])
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print(item.menuSubItems.count)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func didMoveToSuperview() {
        print("move to super view \(item.menuSubItems.count)")
    }

    func configureCell(with Item:MenuItem){
        if Item.menuSubItems.count > 0 {
            self.title.text = Item.menuTitle + " "
            self.title.addImage(imageName: "ic_menu_arrow")
        }else{
            self.title.text = Item.menuTitle
        }
        
        self.item = Item
        
        
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
    




