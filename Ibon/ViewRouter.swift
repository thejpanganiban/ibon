//
//  RouterView.swift
//  Ibon
//
//  Created by Jesse Panganiban on 3/27/25.
//

import SwiftUI

enum UserState {
    case anonymous
    case privacyPolicy
    case loggedIn
}

/**
 ViewRouter: This is where you put your system-level routing.
 
 eg. LoggedIn/Onboarding/PrivacyPolicy
 */
struct ViewRouter: View {
    @State private var userState: UserState = .anonymous
    
    var body: some View {
        if UserState.anonymous == userState {
            Text("Login here")
            Button("Login") {
                userState = .loggedIn
            }
        } else {
            TaskListScreen()
        }
    }
}

#Preview {
    ViewRouter()
}
