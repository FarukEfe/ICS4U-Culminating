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
                Text(node.endingType == .good ? "🙂" : node.endingType == .bad ? "☹️" : "😐")
                Text("\(node.endingDescription!)")
                    .fontWeight(.bold)
            }
            .font(.title)
            .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(node.endingType == .good ? Color.green : node.endingType == .bad ? Color.red : Color.blue)
        .cornerRadius(12)
    }
}
