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

    func configureCell(with Item:MenuItem){
        self.backgroundColor = .clear
        if Item.menuSubItems.count > 0 {
            self.title.text = Item.menuTitle + " "
            self.title.addImage(imageName: "ic_menu_arrow")
        }else{
            self.title.text = Item.menuTitle
        }
        
        self.item = Item
        
        
    }

    
    
}





    




