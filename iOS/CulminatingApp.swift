//
//  CulminatingApp.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

@main
struct CulminatingApp: App {
    @Environment(\.scenePhase) var scenePhase
    @StateObject var vm = NodesList()
    var body: some Scene {
        WindowGroup {
            ContentView(vm: vm)
        }
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .inactive {
                print("Inactive")
            } else if newPhase == .active {
                print("Active")
            } else if newPhase == .background {
                print("Background")
                vm.saveEndings()
            }
        }
    }
}
