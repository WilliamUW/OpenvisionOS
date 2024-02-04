import SwiftUI
import RealityKit
import Combine

struct AirPodsMaxAnimation: View {
    @State private var showAirPodsMax = false
    @State private var showAirForce = false
    @State private var showPancakes = false
    @State private var showToyBiplane = false
    @State private var showBattleSpaceship = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Button("Toggle AirPods Max") {
                        showAirPodsMax.toggle()
                    }

                    if showAirPodsMax {
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
                    }

                    Button("Toggle AirForce") {
                        showAirForce.toggle()
                    }

                    if showAirForce {
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
                        }                    }

                    Button("Toggle Pancakes") {
                        showPancakes.toggle()
                    }

                    if showPancakes {
                        Model3D(named: "pancakes") { model in
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
                        }                    }

                    Button("Toggle Toy Biplane") {
                        showToyBiplane.toggle()
                    }

                    if showToyBiplane {
                        Model3D(named: "toy_biplane_idle") { model in
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
                        }                    }

                    Button("Toggle BattleSpaceship") {
                        showBattleSpaceship.toggle()
                    }

                    if showBattleSpaceship {
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
                        }                    }
                }
                .navigationTitle("Amos' Models")
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

// Assuming `Model3D` is a custom component that you've defined elsewhere,
// ensure it supports being toggled on and off as demonstrated.
#Preview(windowStyle: .automatic) {
    AirPodsMaxAnimation()
}
