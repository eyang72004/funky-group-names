//
//  MainView.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/11/25.
//

import SwiftUI

struct MainView: View {
    @State private var elements: [Int] = []
    @State private var modulo: Int = 1
    @State private var operation: String = "add"
    
    var body: some View {
        VStack {
            Text("Group Theory Visualizer")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("Modulo:")
                TextField("Enter modulo", value: $modulo, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100)
            }
            .padding()
            
            Picker("Operation", selection: $operation) {
                Text("Addition").tag("add")
                Text("Multiplication").tag("multiply")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Button("Generate Elements") {
                elements = Array(0..<modulo)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            if !elements.isEmpty {
                Text("Elements: \(elements.map { "\($0)" }.joined(separator: ", "))")
                    .padding()
            }
            
            NavigationLink(destination: GroupVisualizationView(elements: elements, operation: operation, modulo: modulo)) {
                Text("Visualize Group")
                    .foregroundStyle(.blue)
                    .padding()
            }
            
            NavigationLink(destination: CayleyTableView(elements: elements, operation: operation, modulo: modulo)) {
                Text("View Cayley Table")
                    .foregroundStyle(.blue)
                    .padding()
            }
            
            NavigationLink(destination: EducationView()) {
                Text("Learn About Groups")
                    .foregroundStyle(.blue)
                    .padding()
            }
        }
        .padding()
    }
}
