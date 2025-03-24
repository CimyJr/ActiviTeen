//
//  ActivTeenApp.swift
//  ActivTeen
//
//  Created by user on 18/03/25.
//

import SwiftUI
import SwiftData
@main
struct ActivTeenApp: App {
    var body: some Scene {
        WindowGroup {
            CombinedPreview()
                .modelContainer(for: Song.self, inMemory: true)
        }
    }
}
