//
//  EducationView.swift
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/11/25.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Group Theory Concepts")
                    .font(.largeTitle)
                    .padding()
                
                Text("1. Closure: For every pair of elements in the group, the result of the operation is also in the group.")
                Text("2. Identity: There exists an element that, when used in the operation with any other element, results in the other element.")
                Text("3. Inverses: Every element has an inverse element such that their operation results in the identity.")
                Text("4. Associativity: The operation is associative, meaning that the grouping of operations does not affect the result.")
                
                Spacer()
            }
            .padding()
        }
    }
}


struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
