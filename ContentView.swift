//
//  ContentView.swift
//  volume_sample
//
//  Created by Koichi Kishimoto on 2023/07/18.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State var enlarge = false
    @State var rotate = false

    var body: some View {
        VStack {
            RealityView { content in
                // Add the initial RealityKit content
                if let scene = try? await Entity(named: "Scene3", in: realityKitContentBundle) {
                    let animation = scene.availableAnimations[0]
                    scene.playAnimation(animation.repeat())
                    content.add(scene)
                }
            } update: { content in
                // Update the RealityKit content when SwiftUI state changes
                if let scene = content.entities.first {
                    let ix:Float = 0.0
                    let iy:Float = rotate ? 0.707107 : 0.0
                    let iz:Float = 0.0
                    let r:Float  = rotate ? 0.707107 : 0.0
                    let uniformScale: Float = enlarge ? 1.4 : 1.0
                    let uniformRotate = simd_quatf(ix: ix, iy: iy, iz: iz, r: r)
                    scene.transform.scale = [uniformScale, uniformScale, uniformScale]
                    scene.transform.rotation = uniformRotate
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded { _ in
                enlarge.toggle()
            })

            VStack {
                Toggle("Enlarge RealityView Content", isOn: $enlarge)
                    .toggleStyle(.button)
                Toggle("Rotate RealityView Content", isOn: $rotate)
                    .toggleStyle(.button)
            }.padding().glassBackgroundEffect()
        }
    }
}

#Preview {
    ContentView()
}
