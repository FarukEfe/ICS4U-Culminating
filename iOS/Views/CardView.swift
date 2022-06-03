//
//  CardView.swift
//  iOS
//
//  Created by Vincent Cloutier on 2022-06-03.
//

import SwiftUI

struct CardView: View {
    let node: Node
    var body: some View {
        Text("\(node.endingDescription!)")
    }
}
