//
//  CommunityView1.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible()),
                           GridItem(.flexible())
]

struct CommunityView1: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            
            .navigationTitle("⚕️Community")
        }
    }
}

struct CommunityView1_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView1()
    }
}

// FrameworkTitleView Refactored (This will be used in flexible Grid that will create in community view
struct FrameworkTitleView: View {
    
    let framework: Framework
    
    
    var body: some View {
        VStack {
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        .padding()
    }
    
    
}
