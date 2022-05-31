//
//  NodesList.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-26.
//

import Foundation

class NodesList {
    
    // Where default game nodes are stored
    var gameNodes: [Int : Node]
        
    init() {
        self.gameNodes = storyNodes
    }
    
    func findNode(with ID: Int) -> Node? {
        
        if let returning = self.gameNodes[ID] {
            return returning
        }
        
        return Node(id: 404, paragraphs: [], image: "", edges: [], ending: false)
    }
}
