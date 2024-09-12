//
//  HomeView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var profile: Profile
    @State var QuestList: [Quest] = [Quest(), Quest(), Quest(), Quest()]

    var body: some View {
        NavigationStack {
            VStack {
                // Top welcome message
                HStack {
                    Text("Welcome \(profile.name)")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }

                // Show quests slide
                VStack(alignment: .leading) {
                    Text("Quests")
                        .font(.title)
                        .padding()

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(QuestList) { quest in
                                SingleQuest(thisQuest: quest)
                                    .padding([.leading, .bottom, .trailing])
                            }
                        }
                    }

                    Spacer()
                    
                }
            } // Information VStack
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(Profile.defaultValue)
}
