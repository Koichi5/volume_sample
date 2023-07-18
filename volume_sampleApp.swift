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
            ContentView()
        }.windowStyle(.volumetric)
    }
}
