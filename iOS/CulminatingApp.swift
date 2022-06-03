//
//  CulminatingApp.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

@main
struct CulminatingApp: App {
    
    // Detect movements between foreground and background
    @Environment(\.scenePhase) var scenePhase
    
    // View Model
    @StateObject var nodesViewModel = NodesList()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nodesViewModel: nodesViewModel)
        }
        .onChange(of: scenePhase) { newPhase in
            
            if newPhase == .inactive {
                
                print("Inactive")
                
            } else if newPhase == .active {
                
                print("Active")
                
            } else if newPhase == .background {
                
                print("Background")
                
                nodesViewModel.saveEndings()
                
                
            }
            
        }
    }
}
