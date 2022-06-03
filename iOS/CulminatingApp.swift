//
//  CulminatingApp.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

@main
struct CulminatingApp: App {
    
    @StateObject var nodesViewModel = NodesList()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nodesViewModel: nodesViewModel)
        }
    }
}
