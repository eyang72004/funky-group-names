//
//  Group.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/11/25.
//

import Foundation

struct GroupElement {
    var value: Int
}

struct Group {
    var elements: [GroupElement]
    
    func isGroup() -> Bool {
        return true
    }
}
