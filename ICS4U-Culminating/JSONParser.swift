//
//  JSONParser.swift
//  ICS4U-Culminating
//
//  Created by Efe Yencilek on 2022-05-30.
//

import Foundation

class JSONParser {
    
    // MARK: JSON Parsing Methods
    
    // Fetch Nodes
    func fetchGameNodes(defaultNodes: [Node]) -> [Node] {
        guard let url = Bundle.main.url(forResource: "nodes", withExtension: "json") else {
            print("nodes.json file could not be found in bundle sources.")
            return defaultNodes
        }
        
        do {
            // Load the raw data
            let data = try Data(contentsOf: url)
            
            print("Got data from file, contents are:")
            print(String(data: data, encoding: .utf8)!)
            
            return try JSONDecoder().decode([Node].self, from: data)

        } catch {
            return defaultNodes
        }
    }
    
    // Fetch User Saved Data
    func fetchEndings() -> [Int] {
        return []
    }
    
}
