//
//  ContentView.swift
//  Consciosnes App
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    // Mark Properties:
    
    @State var mainBullets = ["Mindfullness", "Physical Activity", "Health Habits", "Community"]
    
    
    // Mark Body:
    var body: some View {
        NavigationView {
            VStack {
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
