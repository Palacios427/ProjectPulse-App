//
//  ProfileModel.swift
//  ThingsView
//
//  Created by Jorge on 10/09/24.
//

import SwiftUI

@Observable class Profile : ObservableObject {
    
    var name: String
    var email: String
    var teamName: String
    var teamRole: String
    var userRole: String
    var imageName: String
    
    
    init(name: String, email: String, teamName: String, teamRole: String, userRole: String, imageName: String) {
        self.name = name
        self.email = email
        self.teamName = teamName
        self.teamRole = teamRole
        self.userRole = userRole
        self.imageName = imageName
    }
}

extension Profile {
    
    static var defaultValue: Profile = Profile(
        name: "Alejandro del Bosque",
        email: "alejandrobosque@gmail.com",
        teamName: "Team Name",
        teamRole: "Member",
        userRole: "Developer",
        imageName: "pfp"
    )

}
