//
//  EncodableExtention.swift
//  Codable
//
//  Created by Mohamed Elbohy on 4/6/19.
//  Copyright © 2019 Mohamed Elbohy. All rights reserved.
//

import Foundation

/*******
 encodable extenstion to return the value of class request as an array of values 
 *****/

extension Encodable {
    func asDictionary() -> [String: Any] {
        do{
            let data = try JSONEncoder().encode(self)
            guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
                throw NSError()
            }
            return dictionary
        } catch let error {
            print("encoing Error Happened , unable to convert paramteres to dictionary ")
            print(error)
            return ["error":"unabale to convert the paramteres into deictionary"]
        }
    }
}


