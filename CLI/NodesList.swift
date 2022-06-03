//
//  NodesList.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-26.
//

import Foundation

class NodesList: ObservableObject {
    
    // Where default game nodes are stored
    var gameNodes: [Int : Node]
        
    // Keeps track of endings completed by user
    @Published var completedEndings: [Int]
    
    init() {
        self.gameNodes = storyNodes
        self.completedEndings = []
    }
    
    func findNode(with ID: Int) -> Node {
        
        if let returning = self.gameNodes[ID] {
            return returning
        }
        
        return emptyNode
    }
}
