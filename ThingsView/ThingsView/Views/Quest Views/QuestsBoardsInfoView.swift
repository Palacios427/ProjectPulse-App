//
//  QuestsBoardsInfoView.swift
//  ThingsView
//
//  Created by Jorge on 12/09/24.
//

import SwiftUI

struct QuestsBoardsInfoView: View {

    //@State var QuestList: [Quest] = [Quest(), Quest(), Quest(), Quest()]
    
    let QuestList: [Quest] = [
            Quest(name: "Quest 1", level: 1, completion: 50, completed: false, owner: "NONE", desc: "Description 1"),
            Quest(name: "Quest 2", level: 2, completion: 80, completed: true, owner: "Alice", desc: "Description 2"),
            Quest(name: "Quest 3", level: 3, completion: 20, completed: false, owner: "NONE", desc: "Description 3")
        ]
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ForEach(QuestList.filter{$0.owner == "NONE"}){ quest in
                    SingleQuest(thisQuest: quest)
                        .padding([.leading, .bottom, .trailing])
                }
            }
        }
    }
}

#Preview {
    QuestsBoardsInfoView()
}
