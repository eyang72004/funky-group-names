//
//  ContentView.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to the Group Theory Visualizer")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: MainView()) {
                    Text("Start Visualizing Groups")
                        .font(.title2)
                        .foregroundStyle(.blue)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke())
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
