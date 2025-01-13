//
//  CppIntegration.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/10/25.
//

import Foundation

class GroupOperationsInterop {
    static func applyOperation(element1: Int, element2: Int, operation: String, modulo: Int) -> Int {
        let result = GroupOperationsWrapper.applyOperation(withElement1: Int32(element1), element2: Int32(element2), operation: operation, modulo: Int32(modulo))
        return Int(result)
    }
    
    static func generateCayleyTable(elements: [Int], operation: String, modulo: Int) -> [[Int]] {
        let nsElements = elements.map { NSNumber(value: $0) }
        guard let table = GroupOperationsWrapper.generateCayleyTable(withElements: nsElements, operation: operation, modulo: Int32(modulo)) else {
            return []
        }
        return table.map { row in
            row.map { $0.intValue }
        }
    }
}
