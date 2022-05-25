//
//  Node.swift
//  ICS4U-Culminating
//
//  Created by Vincent Cloutier on 2022-05-25.
//

import Foundation

struct Node: Identifiable {
    let id: Int
    let paragraphs: [String]
    let image: String?
    let edges: [Int]
}

let nodes = [
    Node(id: 1, paragraphs: [""], image: nil, edges: [7,8]), // This node will include the text from pages 1-5
    Node(id: 7, paragraphs: [""], image: nil, edges: [9, 13]),
    Node(id: 8, paragraphs: [""], image: nil, edges: [10]),
    Node(id: 9, paragraphs: [""], image: nil, edges: [2]),
    Node(id: 1, paragraphs: [""], image: nil, edges: [2]),


    
]
