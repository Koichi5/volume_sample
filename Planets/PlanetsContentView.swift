//
//  PlanetsContentViwq.swift
//  volume_sample
//
//  Created by Koichi Kishimoto on 2023/07/23.
//

import SwiftUI

struct PlanetsContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        NavigationSplitView {
            List {
                Text("Item")
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                Text("Hello World")
                Button("Open saturn") {
                    Task {
                        await openImmersiveSpace(id: "saturn")
                    }
                }
            }
            .navigationTitle("Content")
            .padding()
        }
    }
}

#Preview {
    PlanetsContentView()
}
