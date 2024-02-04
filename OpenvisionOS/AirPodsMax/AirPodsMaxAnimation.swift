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
            if showBattleSpaceship {
                Model3D(named: "Earth_1_12756") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1.5)
                        .opacity(1.0) // Ensure full opacity
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 4).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
            if showAirForce {
                Model3D(named: "AirForce") { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(1)
                        .phaseAnimator([false, true]) { AirPodsMax, threeDYRotate in
                            AirPodsMax
                                .rotation3DEffect(.degrees(threeDYRotate ? 0 : -1200), axis: (x: 0.1, y: 0.1, z: 0.1))
                        } animation: { threeDYRotate in
                                .linear(duration: 8).repeatForever(autoreverses: false)
                        }
                } placeholder: {
                    ProgressView()
                }                    }
            
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
                }
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
                }
            }
            ScrollView {
                VStack {
                    HStack {
                        Button("Toggle AirPods Max") {
                            showAirPodsMax.toggle()
                        }
                        
                        
                        
                        Button("Toggle AirForce") {
                            showAirForce.toggle()
                        }
                        
                        
                        
                        Button("Toggle Pancakes") {
                            showPancakes.toggle()
                        }
                        
                        
                        
                        Button("Toggle Toy Biplane") {
                            showToyBiplane.toggle()
                        }
                        
                        
                        Button("Toggle Earth") {
                            showBattleSpaceship.toggle()
                        }
                    }

                    
                }
                .navigationTitle("Eyetunes")
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
