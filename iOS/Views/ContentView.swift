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
    
    var gameIsON: Bool {
        return activeNode > 0
    }
    
    var currentNode: Node {
        return nodesViewModel.gameNodes[activeNode] ?? emptyNode
    }
    
    // MARK: View
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
                HistoryView(activeNode: $activeNode, completedEndings: nodesViewModel.completedEndings)
            }
        } else {
            NodeView(nodesViewModel: nodesViewModel, node: currentNode, activeNode: $activeNode)
        }
    }
    
    // MARK: Functions
    func startGame() {
        activeNode = 1
    }
}

