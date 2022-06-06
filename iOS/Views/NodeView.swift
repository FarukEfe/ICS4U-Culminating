//
//  NodeView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct NodeView: View {
    // View Model to Access Ending Nodes
    let nodesViewModel: NodesList
    
    // View Node
    let node: Node
    
    // Binding value of gameIsOn
    @Binding var gameIsOn: Bool
    
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
                        nodesViewModel.activeNodeIndex = 0
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
                                nodesViewModel.activeNodeIndex = currentEdge.destinationId
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
                        if !nodesViewModel.completedEndings.contains(nodesViewModel.activeNodeIndex) {
                            nodesViewModel.completedEndings.append(nodesViewModel.activeNodeIndex)
                            nodesViewModel.saveEndings()
                        }
                        nodesViewModel.activeNodeIndex = 0
                        nodesViewModel.resetActiveNodeIndex()
                        
                    }
            }
        }.background(
            Image("Beige")
                .resizable()
                .ignoresSafeArea()
        )
    }
}
