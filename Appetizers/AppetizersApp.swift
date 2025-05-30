//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 29/04/25.
//

import SwiftUI
import SwiftData

@main
struct AppetizersApp: App {
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

    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
        }
        .modelContainer(sharedModelContainer)
    }
}
