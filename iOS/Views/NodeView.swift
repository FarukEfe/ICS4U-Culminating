//
//  NodeView.swift
//  CulminatingApp
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct NodeView: View {
    let node: Node
    @Binding var activeNode: Int
    
    var image: String {
        return node.image ?? ""
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("\(node.id)")
                    .padding()
                ForEach(node.paragraphs, id: \.self) { currentParagraph in
                    Text(currentParagraph)
                        .padding()
                }
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                
                ForEach(node.edges, id: \.self) { currentEdge in
                    HStack {
                        Spacer()
                        Text(currentEdge.prompt)
                            .padding()
                            .multilineTextAlignment(.trailing)
                            .onTapGesture {
                                activeNode = currentEdge.destinationId
                            }
                    }
                }
            }
        }
    }
}
