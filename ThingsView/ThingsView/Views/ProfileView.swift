//
//  ProfileView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileViewModel: ProfileViewModel

    var body: some View {
        NavigationStack {
            VStack {
                if let profile = profileViewModel.arrProfile.first {
                    Image(profile.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(radius: 10)

                    // Name
                    Text(profile.name)
                        .font(.largeTitle)
                        .bold()

                    // E-mail
                    Link(profile.email, destination: URL(string: "mailto:\(profile.email)")!)
                        .font(.system(size: 25))
                        .foregroundColor(.blue)

                    VStack {
                        // Team Name
                        Text(profile.teamName)
                            .font(.largeTitle)

                        // Team Role
                        Text("Team: \(profile.teamRole)")
                            .font(.title)
                            .padding()

                        // User Role
                        Text(profile.userRole)
                            .font(.title2)
                    }
                    .padding(.vertical, 10)
                } else {
                    Text("No profile data available.")
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileEditView(profile: profileViewModel.arrProfile.first ?? Profile.defaultValue)
                        .environmentObject(profileViewModel)) {
                        HStack {
                            Image(systemName: "pencil.circle")
                                .offset(CGSize(width: 5, height: 0))
                            Text("Edit")
                                .foregroundStyle(.blue)
                                .underline()
                        }
                    }
                }
            }
        }
    }
}
