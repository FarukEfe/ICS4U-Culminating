//
//  NodesList.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-26.
//

import Foundation

class NodesList {
    
    // JSON parser class that turns static data into Node
    var jsonParser = JSONParser()
    
    // Where default game nodes are stored
    var gameNodes: [Node]
    
    // Where previous ending ID's are going to be stored
    var previousEndings: [Int]
    
    init() {
        self.gameNodes = jsonParser.fetchGameNodes(defaultNodes: nodes)
        self.previousEndings = jsonParser.fetchEndings()
    }
    
    func findNode(with ID: Int, from nodes: [Node]) -> Node? {
        for node in nodes {
            if node.id == ID {
                return node
            }
        }
        
        return nil
    }
}
