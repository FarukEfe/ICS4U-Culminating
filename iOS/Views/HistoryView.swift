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
    var totalNumberOfEndings = goodEndingIDs.count + badEndingIDs.count + ambiguousEndingIDs.count
    var body: some View {
        NavigationView {
            ScrollView {
                Text("You have \(totalNumberOfEndings - completedEndings.count) endings left.")
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                
                Text("Completed Endings:")
                    .multilineTextAlignment(.leading)
                    .font(.title2)

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
            .navigationTitle("History")
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
        }
    }
}
