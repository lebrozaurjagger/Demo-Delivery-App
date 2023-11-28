//
//  SomeDeliveryApp.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

@main
struct SomeDeliveryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
