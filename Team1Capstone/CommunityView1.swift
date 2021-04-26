//
//  CommunityView1.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

struct CommunityView1: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
                               
                               
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            
            .navigationTitle("⚕️Community")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
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
                .cornerRadius(10)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        .padding()
    }
    
    
}
