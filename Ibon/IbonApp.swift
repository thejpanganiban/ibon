//
//  IbonApp.swift
//  Ibon
//
//  Created by Jesse Panganiban on 3/27/25.
//

import SwiftUI
import SwiftData

/**
 App: Main place where the application bootup code takes place:
    The environment is prepared. Shared objects are instantiated and declared.
    SwiftData/CloudKit instantiation. Model migrations should happen here.
 */
@main
struct IbonApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var navigationState: NavigationState = .init()

    var body: some Scene {
        WindowGroup {
            ViewRouter()
        }
        .modelContainer(sharedModelContainer)
        .environmentObject(navigationState)
    }
}
