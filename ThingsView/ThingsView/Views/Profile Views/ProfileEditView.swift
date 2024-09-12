//
//  ProfileEditView.swift
//  ThingsView
//
//  Created by Jorge on 11/09/24.
//

import SwiftUI

struct ProfileEditView: View {
    
    @Bindable var profile: Profile
    
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
            
            HStack {
                TextField("Name", text: $profile.name)
                    .frame(width: 300, height: 50) // Fixed size for the text fields
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }
            .padding()
            
            HStack {
                TextField("Email", text: $profile.email)
                    .frame(width: 300, height: 50) // Fixed size for the text fields
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

                HStack {
                    TextField("Team Name", text: $profile.teamName)
                        .frame(width: 300, height: 50) // Fixed size for the text fields
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    Image(systemName: "pencil")
                        .foregroundColor(.gray)
                }
                .padding()

                HStack {
                    TextField("Team Role", text: $profile.teamRole)
                        .frame(width: 300, height: 50) // Fixed size for the text fields
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    Image(systemName: "pencil")
                        .foregroundColor(.gray)
                }

            HStack {
                TextField("User Role", text: $profile.userRole)
                    .frame(width: 300, height: 50) // Fixed size for the text fields
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
            }
            .padding()
        } // Initial VStack
    }
}

#Preview {
    ProfileEditView(profile: Profile.defaultValue)
}
