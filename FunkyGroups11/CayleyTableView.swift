//
//  CayleyTableView.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/11/25.
//

import SwiftUI

struct CayleyTableView: View {
    var elements: [Int]
    var operation: String
    var modulo: Int
    
    @State private var table: [[Int]] = []
    
    var cellSize: CGFloat {
        return max(30, 300 / CGFloat(modulo))
    }
    
    var body: some View {
        VStack {
            Text("Cayley Table")
                .font(.title)
                .padding()
            
            if !elements.isEmpty {
                Button("Generate Cayley Table") {
                    table = GroupOperationsInterop.generateCayleyTable(elements: elements, operation: operation, modulo: modulo)
                }
                .buttonStyle(.borderedProminent)
                .padding()
                
                if !table.isEmpty {
                    ScrollView([.horizontal, .vertical]) {
                        VStack(alignment: .leading, spacing: 0) {
                            ForEach(0..<table.count, id: \.self) { rowIndex in
                                HStack {
                                    ForEach(0..<table[rowIndex].count, id: \.self) { colIndex in
                                        Text("\(table[rowIndex][colIndex])")
                                            .frame(width: cellSize, height: cellSize)
                                            .background(Color.blue.opacity(0.2))
                                            .border(Color.black)
                                            .font(.system(size: max(10, 20 - CGFloat(modulo) / 10)))
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .padding()
    }
}


struct CayleyTableView_Previews: PreviewProvider {
    static var previews: some View {
        // Test with a small modulo
        CayleyTableView(elements: [0, 1, 2], operation: "+", modulo: 3)
        
        // Test with a large modulo
        CayleyTableView(elements: Array(0..<51), operation: "+", modulo: 51)
    }
}
