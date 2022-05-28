//
//  NodesList.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-26.
//

import Foundation

class NodesList {
    
    var nodes: [Node]
    
    init() {
        guard let url = Bundle.main.url(forResource: "nodes", withExtension: "json") else {
            self.nodes = []
            print("nodes.json file could not be found in bundle sources.")
            return
        }
        
        do {
            // Load the raw data
            let data = try Data(contentsOf: url)
            
            print("Got data from file, contents are:")
            print(String(data: data, encoding: .utf8)!)
            
            self.nodes = try JSONDecoder().decode([Node].self, from: data)

        } catch {
            self.nodes = []
        }
    }
}
