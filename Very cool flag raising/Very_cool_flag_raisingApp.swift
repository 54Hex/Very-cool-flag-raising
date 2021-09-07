//
//  Very_cool_flag_raisingApp.swift
//  Very cool flag raising
//
//  Created by Conqueriings on 6/9/21.
//

import SwiftUI
import Firebase

@main
struct Very_cool_flag_raisingApp: App {
    
    init() {
            FirebaseApp.configure()
        }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
