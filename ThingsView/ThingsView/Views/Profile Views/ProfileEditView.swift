//
//  ProfileEditView.swift
//  ThingsView
//
//  Created by Jorge on 11/09/24.
//

import SwiftUI

struct ProfileEditView: View {
    
    @ObservedObject var profile: Profile
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image(profile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 1)
                )
                .shadow(radius: 10)
            
            // Edit Name
            HStack {
                TextField("Name", text: $profile.name)
                    .frame(width: 300, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }
            .padding()

            // Edit Email
            HStack {
                TextField("Email", text: $profile.email)
                    .frame(width: 300, height: 50)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }

            // Edit Team Name
            HStack {
                TextField("Team Name", text: $profile.teamName)
                    .frame(width: 300, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }
            .padding()

            // Edit Team Role
            HStack {
                TextField("Team Role", text: $profile.teamRole)
                    .frame(width: 300, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }

            // Edit User Role
            HStack {
                TextField("User Role", text: $profile.userRole)
                    .frame(width: 300, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }
            .padding()

            // Save Button
            Button(action: {
                // Find the profile in the array and update it
                if let index = profileViewModel.arrProfile.firstIndex(where: { $0.id == profile.id }) {
                    profileViewModel.arrProfile[index] = profile
                }
                // Save the updated profiles to JSON
                profileViewModel.save()
                dismiss() // Dismiss the view
            }) {
                Text("Save Changes")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

#Preview {
    ProfileEditView(profile: Profile.defaultValue)
        .environmentObject(ProfileViewModel()) // Add this if ProfileViewModel is needed for previews
}
