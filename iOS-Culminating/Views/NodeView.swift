//
//  NodeView.swift
//  iOS-Culminating
//
//  Created by Vincent Cloutier on 2022-05-31.
//

import SwiftUI

struct NodeView: View {
    
    // MARK: Stored Properties
    let node: Node

    // MARK: Computed Properties
    var body: some View {
        Text(node.paragraphs[0])
    }
}
