//
//  QuestsInfoViews.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import SwiftUI

struct QuestsInfoViews: View {
    @EnvironmentObject var questVM: QuestViewModel
    @State var profileVM = ProfileViewModel()

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(questVM.arrQuests.filter { $0.owner == profileVM.arrProfile.first?.name }) { quest in
                    SingleQuest(thisQuest: quest, profile: profileVM.arrProfile.first!)
                        .padding([.leading, .bottom, .trailing])
                }
            }
        }
    }
}
