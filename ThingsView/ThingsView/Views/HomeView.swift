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
        NavigationStack {
            VStack {
                // Your main content here
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Welcome \(profile.name)")
                        .font(.title2)
                        .bold()
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                }
            }
        }
    }
}


#Preview {
    HomeView()
        .environment(Profile.defaultValue)
}
