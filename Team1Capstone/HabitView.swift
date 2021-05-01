//
//  HealthHabitsView.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/17/21.
//

import SwiftUI

struct HabitView: View {
    //Mark Properties:
    @State var category : Category
    @State var originalFrameworks: [Framework]
    @State var mainBullets = [Framework]()
    @State private var frameworks = [Framework]()
    
    // Mark Body:
    var body: some View {
        
        VStack {
            Text("How We Care For Ourselves")
                .font(.title3)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
            
            
            List(mainBullets, id: \.self) {
                bullet in
                NavigationLink(
                    destination: FrameworkDetailView(framework: bullet),
                    label: {
                        Text(bullet.name)
                    })
                    .padding()
            }
            .navigationTitle(title())
            .foregroundColor(.yellow)
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            
            
            //HSTACK links to screens - located bottom of the screen
//            HStack{
//                Spacer()
//                NavigationLink(
//                    destination: ContentView(),
//                    label: {
//                        Image(systemName: "house.circle")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:50, height:50)
//                    })
//
//                NavigationLink(
//                    destination: CommunityView1(),
//                    label: {
//                        Image(systemName: "hands.clap.fill")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:50, height:50)
//                    })
//
//                NavigationLink(
//                    destination: HealthHabitsView(category: Category.HealthHabits, originalFrameworks: frameworks),
//                    label: {
//                        Text("Health Habits")
//                    })
//                    .padding(.leading)
//                    .padding(5)
//                    .font(.title)
//
//                NavigationLink(
//                    destination: MindfulnessView(),
//                    label: {
//                        Image(systemName: "face.smiling")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:50, height:50)
//                    })
//
//                NavigationLink(
//                    destination: PhysicalActivityView(),
//                    label: {
//                        Image(systemName: "bicycle")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:50, height:50)
//                    })
//                Spacer()
//            }//End Point HStack
        }
        
        
        .padding()
        
        .onAppear {
            mainBullets = MockData.frameworks.filter({ framework in
                return framework.category == category
            })
            mainBullets.sort { f1, f2 in
                f1.name < f2.name
            }
            for item in originalFrameworks {
                if item.category == category {
                    
                }
            }
        }
    }// NAVIGATIONVIEW END POINT
    func title() -> String {
        switch category {
        case .Community:
            return "Community"
        case .HealthHabits:
            return "HealthHabits"
        case .Mindfulness:
            return "Mindfullnes"
        case .PhysicalActivity:
            return "Physical Activity"
        }
    }
}// BODY END POINT
// STRUCT END POINT

// Mark Preview:
struct HealthHabitsView_Previews: PreviewProvider {
    static var previews: some View {
        HabitView(category: Category.HealthHabits,
                         originalFrameworks: MockData.frameworks)
    }
}
