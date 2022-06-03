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
    
    // Shows active node index (EXPERIMENTAL)
    @Published var activeNodeIndex: Int
    
    init() {
        self.gameNodes = storyNodes
        self.completedEndings = NodesList.loadEndings()
        self.activeNodeIndex = NodesList.loadActiveNodeIndex()
    }
    
    func findNode(with ID: Int) -> Node {
        
        if let returning = self.gameNodes[ID] {
            return returning
        }
        
        return emptyNode
    }
    
    // MARK: Persistence
    func saveEndings() {
        let defaults = UserDefaults.standard
        // Save to User Defaults for Key "userEndings"
        defaults.set(self.completedEndings, forKey: "userEndings")
    }
    
    func saveIndex() {
        let defaults = UserDefaults.standard
        // Save to User Defaults for Key "userIndex"
        defaults.set(self.activeNodeIndex, forKey: "userIndex")
    }
    
    static func loadEndings() -> [Int] {
        let defaults = UserDefaults.standard
        // Retrieve Endings from User Defaults
        let savedEndings = defaults.object(forKey: "userEndings") as? [Int] ?? []
        // Return Retrieved Data
        return savedEndings
    }
    
    static func loadActiveNodeIndex() -> Int {
        let defaults = UserDefaults.standard
        // Retrieve Index from User Defaults
        let savedIndex = defaults.object(forKey: "userIndex") as? Int ?? 0
        // Return Data
        return savedIndex
    }
    
    func resetActiveNodeIndex() {
        let defaults = UserDefaults.standard
        // Remove for key "userIndex"
        defaults.removeObject(forKey: "userIndex")
        // Set Active Node Index to 0
        self.activeNodeIndex = 0
    }
}
