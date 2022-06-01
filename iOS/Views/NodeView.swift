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
                    .font(Font.custom("Sunset Medium", size: 36.0))
                ForEach(node.paragraphs, id: \.self) { currentParagraph in
                    Text("\t\(currentParagraph)")
                        .padding()
                        .font(Font.custom("Sunset Light", size: 20))
                }
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding()

                
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
        }
    }
}
