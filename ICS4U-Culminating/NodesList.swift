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
    var gameNodes: [Int : Node]
    
    // Where previous ending ID's are going to be stored
    var previousEndings: [Int]
    
    init() {
        self.gameNodes = jsonParser.fetchGameNodes(defaultNodes: storyNodes)
        self.previousEndings = jsonParser.fetchEndings()
    }
    
    func findNode(with ID: Int) -> Node? {
        
        if let returning = self.gameNodes[ID] {
            return returning
        }
        
        return Node(id: 404, paragraphs: [], image: "", edges: [], ending: false)
    }
}
