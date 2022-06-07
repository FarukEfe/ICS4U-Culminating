//
//  ContentView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    @ObservedObject var nodesViewModel: NodesList
    
    @State var activeNode = 0
    @State private var showingSheet = false
    @State var gameIsOn = false
    
    var currentNode: Node {
        return nodesViewModel.findNode(with: activeNode)
    }
    
    // MARK: Initializer
    init (nodesViewModel: NodesList) {
        self.nodesViewModel = nodesViewModel
    }
    
    // MARK: View
    var body: some View {
        if gameIsOn == false && activeNode == 0 {
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
                HistoryView(activeNode: $activeNode, completedEndings: nodesViewModel.completedEndings)
            }
        } else {
            NodeView(nodesViewModel: nodesViewModel, node: currentNode, gameIsOn: $gameIsOn, activeNode: $activeNode)
        }
    }
    
    // MARK: Functions
    func startGame() {
        if nodesViewModel.activeNodeIndex > 0 {
            self.activeNode = nodesViewModel.activeNodeIndex
            print("Game data retrieved, active node is \(self.activeNode)")
        } else {
            self.activeNode = 1
            nodesViewModel.activeNodeIndex = activeNode
        }
        nodesViewModel.saveIndex()
        gameIsOn = true
    }
}

