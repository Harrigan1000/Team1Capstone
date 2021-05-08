//
//  MindfulnessView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI


struct MindfulnessView: View {
    
    
    @State var mindfulnessBullets = ["Focus", "Breathing", "Relaxation", "Encouragement"]
    
    // Mark Body:
    var body: some View {
        
        
        VStack {
            Text("Day to Day Exercises")
                .font(.title2)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
            
            List(mindfulnessBullets, id: \.self) {
                bullets in
                NavigationLink(
                    destination: MindfulnessView(),
                    label: {
                        Text(bullets)
                    })
                    .padding()
            }
                .padding()
        }//VSTACK END POINT
        .navigationTitle(" ⚕️Mindfulness")
        .foregroundColor(.yellow)
        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
        .onAppear {
            mindfulnessBullets.sort()
        }
        
    }// BODY END POINT
}// STRUCT END POINT

// Mark Preview:

struct MindfulnessView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessView()
    }
}

