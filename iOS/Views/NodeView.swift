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
    
    // Update Ending Node Index
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
                        activeNode = 0
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
                                activeNode = currentEdge.destinationId
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
                        if !nodesViewModel.completedEndings.contains(activeNode) {
                            nodesViewModel.completedEndings.append(activeNode)
                            nodesViewModel.saveEndings()
                        }
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
