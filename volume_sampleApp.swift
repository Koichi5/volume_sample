//
//  volume_sampleApp.swift
//  volume_sample
//
//  Created by Koichi Kishimoto on 2023/07/18.
//

import SwiftUI

@main
struct volume_sampleApp: App {
    var body: some Scene {
        WindowGroup {
//            PlanetsContentView()
            ContentView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 1, height: 1, depth: 1, in: .meters)
        
//        ImmersiveSpace(id: "saturn") {
//            PlanetsView()
//        }
    }
}
