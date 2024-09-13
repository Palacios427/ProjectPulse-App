//
//  QuestsBoardsInfoView.swift
//  ThingsView
//
//  Created by Jorge on 12/09/24.
//

import SwiftUI

struct QuestsBoardsInfoView: View {

    //@State var QuestList: [Quest] = [Quest(), Quest(), Quest(), Quest()]
    
    @State var questVM = QuestViewModel()
    @EnvironmentObject var profileVM: ProfileViewModel

    var body: some View {
        ScrollView(.vertical){
            VStack{
                ForEach(questVM.arrQuests.filter{$0.owner == "NONE"}){ quest in
                    SingleQuest(thisQuest: quest, profile: profileVM.arrProfile.first!)
                        .padding([.leading, .bottom, .trailing])
                }
            }
        }
    }
}

#Preview {
    QuestsBoardsInfoView()
}
