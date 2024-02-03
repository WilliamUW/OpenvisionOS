//
//  AirPodsMaxAnimation.swift
//  OpenvisionOS
//
//  Created by Amos Gyamfi on 12.11.2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct AirPodsMaxAnimation: View {
    var body: some View {
        NavigationStack {
            ScrollView { // Embed VStack in ScrollView
                VStack {
                    Model3D(named: "Airpods_Max_Pink") { model in
                        model
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.3)
                            .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                                AirPodsMax
                                    .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                            } animation: { threeDYRotate in
                                    .linear(duration: 8).repeatForever(autoreverses: false)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    Model3D(named: "AirForce") { model in
                        model
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.3)
                            .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                                AirPodsMax
                                    .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                            } animation: { threeDYRotate in
                                    .linear(duration: 8).repeatForever(autoreverses: false)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    Model3D(named: "pancakes") { model in
                        model
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.1)
                            .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                                AirPodsMax
                                    .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                            } animation: { threeDYRotate in
                                    .linear(duration: 8).repeatForever(autoreverses: false)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    Model3D(named: "toy_biplane_idle") { model in
                        model
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.1)
                            .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                                AirPodsMax
                                    .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                            } animation: { threeDYRotate in
                                    .linear(duration: 8).repeatForever(autoreverses: false)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                }
                .navigationTitle("Amos' AirPods Max")
                .toolbar {
                    ToolbarItem(placement: .bottomOrnament) {
                        HStack {
                            Image(systemName: "battery.75percent")
                                .symbolRenderingMode(.hierarchical)
                            Text("75 %")
                        }
                    }
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    AirPodsMaxAnimation()
}
