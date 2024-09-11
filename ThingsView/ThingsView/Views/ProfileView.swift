//
//  ProfileView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        NavigationView {
            
            // Content View
            ProfileInfoView(profile: .defaultValue)
            
        } // End NavigationView    }
    }
}

#Preview {
    ProfileView()
}
