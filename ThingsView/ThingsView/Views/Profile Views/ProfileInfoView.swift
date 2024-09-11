//
//  ProfileInfoView.swift
//  ThingsView
//
//  Created by Jorge on 10/09/24.
//

import SwiftUI

struct ProfileInfoView: View {
    
    var profile: Profile
    
    var body: some View {
        VStack {
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
            Text(profile.email)
                .font(.system(size: 25))
            
            
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
            
        }// End VStack
        .padding()
    }
}

#Preview {
    // Example using default values from the extension
    ProfileInfoView(profile: Profile.defaultValue)
}
