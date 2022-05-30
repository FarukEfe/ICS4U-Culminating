//
//  NodesList.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-26.
//

import Foundation

class NodesList {
    
    var gameNodes: [Node]
    
    init() {
        guard let url = Bundle.main.url(forResource: "nodes", withExtension: "json") else {
            self.gameNodes = nodes
            print("nodes.json file could not be found in bundle sources.")
            return
        }
        
        do {
            // Load the raw data
            let data = try Data(contentsOf: url)
            
            print("Got data from file, contents are:")
            print(String(data: data, encoding: .utf8)!)
            
            self.gameNodes = try JSONDecoder().decode([Node].self, from: data)

        } catch {
            self.gameNodes = nodes
        }
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
