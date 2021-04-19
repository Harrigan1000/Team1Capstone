//
//  HealthHabitsView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct HealthHabitsView: View {
   //Mark Properties:
    
    @State var mainBullets = ["Eating Habits", "Nutritional Needs", "Meal Preparation", "Track Nutrition"]
    
    // Mark Body:
    var body: some View {
        NavigationView {
            VStack {
                TextField("Health Habits", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding([.leading, .bottom, .trailing])
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                TextField("Nutritional Needs Suggestions", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                
                
                List(mainBullets, id: \.self) {
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
                mainBullets.sort()
            }
        }// NAVIGATIONVIEW END POINT
    }// BODY END POINT
}// STRUCT END POINT

// Mark Preview:
struct HealthHabitsView_Previews: PreviewProvider {
    static var previews: some View {
        HealthHabitsView()
    }
}
