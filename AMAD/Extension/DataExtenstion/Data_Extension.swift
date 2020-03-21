//
//  Data_Extension.swift
//  Sawa Mall
//
//  Created by mohamed albohy on 7/14/19.
//  Copyright © 2019 unicom. All rights reserved.
//

import Foundation

extension Data{
    func decodeObject<T:Codable>(targetModel: T.Type)->T?{
        let jsonDecoder = JSONDecoder()
        let objectDecoded = try? jsonDecoder.decode(T.self, from: self)
        return objectDecoded
    }
}
