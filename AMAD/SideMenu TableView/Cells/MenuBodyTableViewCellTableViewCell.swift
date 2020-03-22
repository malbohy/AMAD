//
//  MenuBodyTableViewCellTableViewCell.swift
//  AMAD
//
//  Created by mohamed albohy on 3/22/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class MenuBodyTableViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var title: SideMenuSubItemLabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(with Item:MenuItem){
        
    }

}
