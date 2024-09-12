//
//  ProfileModel.swift
//  ThingsView
//
//  Created by Jorge on 10/09/24.
//

import Foundation
import SwiftUI

@Observable class Profile: Identifiable, Codable, ObservableObject {
    
    var id = UUID()  // UUID is generated and won't be decoded
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

    private enum CodingKeys: String, CodingKey {
        case name, email, teamName, teamRole, userRole, imageName
        // Exclude id from encoding/decoding
    }
    
    static var defaultValue: Profile {
        Profile(name: "Default Name", email: "default@example.com", teamName: "Default Team", teamRole: "Member", userRole: "User", imageName: "defaultImage")
    }


    // Conform to Decodable and Encodable
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.email = try container.decode(String.self, forKey: .email)
        self.teamName = try container.decode(String.self, forKey: .teamName)
        self.teamRole = try container.decode(String.self, forKey: .teamRole)
        self.userRole = try container.decode(String.self, forKey: .userRole)
        self.imageName = try container.decode(String.self, forKey: .imageName)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(email, forKey: .email)
        try container.encode(teamName, forKey: .teamName)
        try container.encode(teamRole, forKey: .teamRole)
        try container.encode(userRole, forKey: .userRole)
        try container.encode(imageName, forKey: .imageName)
    }
}

/*
 extension Profile {
    
    static var defaultValue: Profile = Profile(
        name: "Alejandro del Bosque",
        email: "alejandrobosque@gmail.com",
        teamName: "Team Name",
        teamRole: "Member",
        userRole: "Developer",
        imageName: "delBosque_pfp"
    )

}
*/
