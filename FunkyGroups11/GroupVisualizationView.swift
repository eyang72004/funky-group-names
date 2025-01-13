//
//  GroupVisualizationView.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/11/25.
//



import SwiftUI

struct GroupVisualizationView: View {
    @State var elements: [Int]
    @State var operation: String
    @State var modulo: Int

    
    var elementWidth: CGFloat {
        return max(30, 300 / CGFloat(modulo))
    }
    
    var textFont: Font {
        return .system(size: max(10, 20 - CGFloat(modulo) / 10))
    }
    
    var body: some View {
        VStack {
            Text("Group Visualization")
                .font(.title)
                .padding()
            
            
            ScrollView([.horizontal, .vertical]) {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(elements, id: \.self) { element in
                        HStack {
                            ForEach(elements, id: \.self) { otherElement in
                                let result = GroupOperationsInterop.applyOperation(element1: element, element2: otherElement, operation: operation, modulo: modulo)
                                
                    
                                
                                
                                Text("\(result)")
                                    .font(textFont)
                                    .padding(5)
                                    .background(Circle().fill(.blue))
                                    .foregroundStyle(.white)
                                    .frame(width: elementWidth, height: elementWidth, alignment: .center)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                                
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .padding()
    }
}




struct GroupVisualizationView_Previews: PreviewProvider {
    static var previews: some View {
        // Test with a smaller modulo (3)
        GroupVisualizationView(elements: [0, 1, 2], operation: "+", modulo: 3)
        
        // Test with a larger modulo (51) to see how it scales
        GroupVisualizationView(elements: Array(0..<51), operation: "+", modulo: 51)
    }
}


