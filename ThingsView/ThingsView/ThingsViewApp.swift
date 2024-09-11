//
//  ThingsViewApp.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

@main
struct ThingsViewApp: App {
    
    @State var profile: Profile = Profile.defaultValue

    
    var body: some Scene {
        WindowGroup {
            ApplicationView()
                .environment(profile)
        }
    }
}
