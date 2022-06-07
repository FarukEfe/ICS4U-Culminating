//
//  HistoryView.swift
//  iOS
//
//  Created by Vincent Cloutier on 2022-06-01.
//

import SwiftUI

struct HistoryView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var activeNode: Int
    let vm: NodesList
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.completedEndings, id: \.self) { currentEnding in
                    CardView(node: vm.findNode(with: currentEnding))
                        .padding(.horizontal)
                        .onTapGesture {
                            activeNode = currentEnding
                        }
                }
            }
            .navigationTitle("\(vm.completedEndings.count)/33 Endings:")
            .background(
                Image("Beige")
                    .resizable()
                    .ignoresSafeArea()
            )
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
        }
    }
}


