//
//  ContentView.swift
//  iOS-Culminating
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var activeNode = 0
    
    // MARK: Computed Properties
    var gameIsON: Bool {
        return activeNode > 0
    }
    var body: some View {
        if gameIsON == false {
            Text("Welcome!")
                .onTapGesture {
                    startGame()
                }
        } else {
            Text("The game is afoot")
        }
    }
    
    // MARK: Functions
    func startGame() {
        activeNode = 1
    }
}

