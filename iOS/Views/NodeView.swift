//
//  NodeView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct NodeView: View {
    let vm: NodesList
    let node: Node
    // Binding value of gameIsOn
    @Binding var gameIsOn: Bool
    
    // View Active Node Index
    @Binding var activeNode: Int
    
    var nodeIsAnEnd: Bool {
        return node.edges == []
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("\(node.id)")
                    .padding()
                    .font(Font.custom("Sunset Medium", size: 36.0))
                    .onTapGesture {
                        gameIsOn = false
                        activeNode = 0
                        nodesViewModel.activeNodeIndex = 0
                        nodesViewModel.resetActiveNodeIndex()
                    }
                ForEach(node.paragraphs, id: \.self) { currentParagraph in
                    Text("\t\(currentParagraph)")
                        .padding()
                        .font(Font.custom("Sunset Light", size: 20))
                }
                
                if node.image != nil {
                    Image(node.image!)
                        .resizable()
                        .scaledToFit()
                        .border(Color.black, width: 5)
                        .padding()

                }
                
                ForEach(node.edges, id: \.self) { currentEdge in
                    HStack {
                        Spacer()
                        Text(currentEdge.prompt)
                            .padding()
                            .font(Font.custom("Sunset Medium Italic", size: 20))
                            .multilineTextAlignment(.trailing)
                            .onTapGesture {
                                activeNode = currentEdge.destinationId
                                nodesViewModel.activeNodeIndex = activeNode
                                nodesViewModel.saveIndex()
                                
                            }
                    }
                }
                
            }
            if nodeIsAnEnd == true {
                Text("The End")
                    .padding()
                    .font(Font.custom("Sunset Bold", size: 25))
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        if !vm.completedEndings.contains(vm.activeNodeIndex) && gameIsOn {
                            vm.completedEndings.append(vm.activeNodeIndex)
                            vm.saveEndings()
                        }
                        gameIsOn = false
                        nodesViewModel.activeNodeIndex = 0
                        nodesViewModel.resetActiveNodeIndex()
                        activeNode = 0
                    }
            }
        }.background(
            Image("Beige")
                .resizable()
                .ignoresSafeArea()
        )
    }
}
