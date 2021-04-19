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
        
        NavigationView {
            VStack {
                TextField("Mindfulness", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding([.leading, .bottom, .trailing])
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                TextField("Day to Day Exercises for:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    
                List(mindfulnessBullets, id: \.self) {
                    bullets in
                    NavigationLink(
                        destination: MindfulnessView(),
                        label: {
                            Text(bullets)
                        })
                    .padding()
                }
            }//VSTACK END POINT
            .onAppear {
                mindfulnessBullets.sort()
            }
        }// NAVIGATIONVIEW END POINT
    }// BODY END POINT
}// STRUCT END POINT

// Mark Preview:

struct MindfulnessView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessView()
    }
}
