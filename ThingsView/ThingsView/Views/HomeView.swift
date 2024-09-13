//
//  HomeView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @State var QuestList = QuestViewModel()
    @State var statVM = StatViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                // Top welcome message
                HStack {
                    Text("Welcome \(profileViewModel.arrProfile.first?.name ?? "Guest")")
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
                            ForEach(QuestList.arrQuests) { item in
                                SingleQuest(thisQuest: item, profile: profileViewModel.arrProfile.first!)
                                    .padding([.leading, .bottom, .trailing])
                            }
                        }
                    }
                                        
                    Text("Stats")
                        .font(.title)
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(statVM.arrStats) { item in
                                StatDetail(stat: item)
                            }
                        }
                    }
                }
                
                Spacer()
                
            } // End of main VStack
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ProfileViewModel())
}
