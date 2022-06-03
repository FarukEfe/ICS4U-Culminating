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
    var completedEndings: [Int]
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(completedEndings, id: \.self) { currentEnding in
                    Text("\(currentEnding)")
                        .padding()
                        .font(.title2)
                        .onTapGesture {
                            activeNode = currentEnding
                            dismiss()
                        }
                }
            }
            .navigationTitle("\(completedEndings.count)/33:")
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
        }
    }
}
