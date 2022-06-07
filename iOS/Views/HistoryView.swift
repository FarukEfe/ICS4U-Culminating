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
                HStack{
                    Text("You've completed \(vm.completedEndings.count)/33 endings.")
                        .font(.title2)
                    Spacer()
                }
                .padding(.horizontal)
                ForEach(vm.completedEndings, id: \.self) { currentEnding in
                    CardView(node: vm.findNode(with: currentEnding))
                        .padding(.horizontal)
                        .onTapGesture {
                            activeNode = currentEnding
                        }
                }
            }
            .navigationTitle("History")
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


