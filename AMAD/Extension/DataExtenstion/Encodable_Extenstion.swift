//
//  Encodable_Extenstion.swift
//  Sawa Mall
//
//  Created by mohamed albohy on 7/14/19.
//  Copyright © 2019 unicom. All rights reserved.
//

import Foundation


extension Encodable{
    func encodeObject()->Data?{
        let jsonEncoder = JSONEncoder()
        let objectEncoded = try? jsonEncoder.encode(self)
        return objectEncoded
    }
}
