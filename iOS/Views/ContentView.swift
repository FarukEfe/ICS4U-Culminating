//
//  ContentView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: NodesList
    @State var activeNode = 0
    @State private var showingSheet = false
    
    var gameIsON: Bool {
        return activeNode > 0
    }
    var currentNode: Node {
        return vm.findNode(with: activeNode)
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
                    .border(Color.black, width: 10)
                    .padding()
                    .onTapGesture {
                        startGame()
                    }
                
                Text("BY R. A. MONTGOMERY")
                    .font(Font.custom("Benecarlo Medium", size: 24.0))
                
                Spacer()
                
                if !vm.completedEndings.isEmpty {
                    Button("History") {
                        showingSheet.toggle()
                    }
                    .buttonStyle(.bordered)
                }
            }
            .padding()
            .sheet(isPresented: $showingSheet) {
                HistoryView(activeNode: $activeNode, vm: vm)
            }
        } else {
            NodeView(vm: vm, node: currentNode, activeNode: $activeNode)
        }
    }
    func startGame() {
        activeNode = 1
    }
}

