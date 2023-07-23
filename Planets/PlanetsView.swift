//
//  PlanetsView.swift
//  volume_sample
//
//  Created by Koichi Kishimoto on 2023/07/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetsView: View {
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "Scene4", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}

#Preview {
    PlanetsView()
}
