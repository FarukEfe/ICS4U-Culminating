//
//  ContentView.swift
//  iOS-Culminating
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct ContentView: View {
    @State var activeNode = 0
    var gameIsON: Bool {
        return activeNode > 0
    }
    var currentNode: Node {
        return storyNodes[activeNode] ?? emptyNode
    }
    var body: some View {
        if gameIsON == false {
            Text("Welcome!")
                .onTapGesture {
                    startGame()
                }
        } else {
            NodeView(node: currentNode, activeNode: $activeNode)
        }
    }
    
    func startGame() {
        activeNode = 1
    }
}

