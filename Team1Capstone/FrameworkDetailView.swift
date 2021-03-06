//
//  FrameworkDetailView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
//    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
//            HStack {
//                Spacer()
//                Button {
//                    isShowingDetailView = false
//                } label: {
//                    Image(systemName: "xmark")
//                        .foregroundColor(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
//            }
//            .padding()
            
            
            //Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Coming Soon")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
