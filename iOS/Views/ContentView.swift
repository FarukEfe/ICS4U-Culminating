//
//  ContentView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct ContentView: View {
    @State var activeNode = 0
    @State var completedEndNodes: [Int] = []
    @State private var showingSheet = false
    
    var gameIsON: Bool {
        return activeNode > 0
    }
    var currentNode: Node {
        return storyNodes[activeNode] ?? emptyNode
    }
    var body: some View {
        if gameIsON == false {
            VStack {
                Spacer()
                
                Text("THE ABOMINABLE SNOWMAN")
                    .font(Font.custom("Benecarlo Book", size: 36))
                    .multilineTextAlignment(.center)
                
                Image("Cover")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .onTapGesture {
                        startGame()
                    }
                
                Text("BY R. A. MONTGOMERY")
                    .font(Font.custom("Benecarlo Medium", size: 24.0))
                
                Spacer()
                
                Button("History") {
                    showingSheet.toggle()
                }
                .buttonStyle(.bordered)
                
            }
            .padding()
            .sheet(isPresented: $showingSheet) {
                HistoryView()
            }
        } else {
            NodeView(node: currentNode, activeNode: $activeNode, completedEndNodes: $completedEndNodes)
        }
    }
    
    func startGame() {
        activeNode = 1
    }
}

