//
//  StatsView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct StatsView: View {
    @State var statVM = StatViewModel()
    
    var body: some View {
        HStack {
            ScrollView {
                ForEach(statVM.arrStats) { item in
                    
                    StatDetail(stat: item)

                }
            }
                
        }
    }
}

#Preview {
    StatsView()
}
