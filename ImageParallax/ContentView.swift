//
//  ContentView.swift
//  ImageParallax
//
//  Created by Rajat Jangra on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var motionManager = MotionManager()
    
    var body: some View {
        
        Image("image")
            .offset(x: motionManager.roll * 100, y: motionManager.pitch * 100)
            .onAppear {
                motionManager.startMonitoringMotionUpdates()
            }
    }
}

#Preview {
    ContentView()
}
