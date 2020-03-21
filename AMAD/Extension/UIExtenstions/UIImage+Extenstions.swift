//
//  UIImage+Extenstions.swift
//  Rayat Dynamics
//
//  Created by mohamed albohy on 9/15/19.
//  Copyright © 2019 Rayat. All rights reserved.
//

import Foundation
import UIKit

extension UIImage{
    
    func getBase64String()->String?{
        let  cropImage = self.imageWithImage(image: self, scaledToSize: CGSize(width: 50.0, height: 50.0))
        let data = cropImage.pngData()
        let stringBase64 = data?.base64EncodedString(options: .lineLength64Characters)
        return stringBase64
    }
    
    func imageWithImage(image:UIImage ,scaledToSize newSize:CGSize)-> UIImage{
        UIGraphicsBeginImageContext( newSize )
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage : UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return newImage
    }
}


extension UIImageView{
    func circleImage(){
        self.layer.borderWidth = 0
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    
    func circleImageWithHight(){
        self.layer.borderWidth = 0
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.white.cgColor
    }
}
