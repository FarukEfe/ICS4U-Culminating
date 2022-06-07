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
        HStack {
            HStack{
                Text(node.ending?.classification == .good ? "🙂" : node.ending?.classification == .bad ? "☹️" : "😐")
                Text(node.ending!.description)
                    .fontWeight(.bold)
            }
            .font(.title)
            .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(node.ending?.classification == .good ? Color.green : node.ending?.classification == .bad ? Color.red : Color.blue)
        .cornerRadius(12)
    }
}
