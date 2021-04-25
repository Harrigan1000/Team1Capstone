//
//  FrameworkDetailView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var body: some View {
        VStack {
            FrameworkTitleView(name: "Metal", imageName: "metal", description: "Metal provides near-direct access to the graphics processing unit (GPU), enabling you to maximize the graphics and compute potential of your apps on iOS, macOS, and tvOS.\n\nBuilding on an approachable, low-overhead architecture with precompiled GPU shaders, fine-grained resource control, and multithreading support, Metal further evolves support for GPU-driven command creation, simplifies working with the array of Metal-capable GPUs, and lets you tap into Pro power of Mac Pro and Pro Display XDR.")
                .font(.body)
                .padding()
            
            Button {
                
            } label: {
                Text("Learn More")
            }
            .font(.title2)
            .background(Color.red)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView()
    }
}
