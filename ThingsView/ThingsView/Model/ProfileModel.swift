//
//  ProfileModel.swift
//  ThingsView
//
//  Created by Jorge on 10/09/24.
//

import SwiftUI

struct Profile {
    var name: String
    var email: String
    var teamName: String
    var teamRole: String
    var userRole: String
    var imageName: String
    
}

extension Profile {
    static var defaultValue: Profile {
        return Profile(
            name: "Alejandro del Bosque",
            email: "alejandrobosque@gmail.com",
            teamName: "Team Name",
            teamRole: "Member",
            userRole: "Developer",
            imageName: "pfp"
        )
    }
}

