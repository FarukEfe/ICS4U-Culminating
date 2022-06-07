//
//  HistoryView.swift
//  iOS
//
//  Created by Vincent Cloutier on 2022-06-01.
//

import SwiftUI

struct HistoryView: View {
    
    // Dismiss view when toggled
    @Environment(\.dismiss) var dismiss
    
    // Binds to active node on ContentView.swift
    @Binding var activeNode: Int
    
    // View Model
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
                ToolbarItem(placement: .confirmationAction) {
                    Button("Close") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Erase Endings") {
                        vm.resetUserEndings()
                        dismiss()
                    }
                }
            }
        }
    }
}


