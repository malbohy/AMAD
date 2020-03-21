//
//  UiViewExtenstion.swift
//  Sawa Mall
//
//  Created by mohamed albohy on 7/7/19.
//  Copyright © 2019 unicom. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func show(){ self.isHidden = false }
    
    func hide(){ self.isHidden = true }
    
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func applyBorder(width: CGFloat , cornerRadius:CGFloat , borderColor:UIColor ){
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.layer.borderColor = borderColor.cgColor
    }
    
    func applyShadow(scale: Bool = true , opacity:Float = 0.2 , width: Int = 3 , height:Int = 3 , radius:CGFloat = 5 , maskToBounds:Bool = false) {
        layer.masksToBounds = maskToBounds
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: width , height: height)
        layer.shadowRadius = radius
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    
}
