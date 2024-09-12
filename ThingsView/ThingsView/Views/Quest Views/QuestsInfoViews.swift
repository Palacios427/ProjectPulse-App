//
//  QuestsInfoViews.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import SwiftUI

struct QuestsInfoViews: View {

    @State var QuestList: [Quest] = [Quest(), Quest(), Quest(), Quest()]
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ForEach(QuestList){ quest in
                    SingleQuest(thisQuest: quest)
                        .padding([.leading, .bottom, .trailing])
                }
            }
        }
    }
}

#Preview {
    QuestsInfoViews()
}
