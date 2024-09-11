//
//  HomeView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var profile: Profile
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    HomeView()
        .environment(Profile.defaultValue)
}
