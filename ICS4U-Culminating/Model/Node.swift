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
    Node(id: 1, paragraphs: ["bla bla bla", "bla bla bla bla"], image: nil, edges: [2])
]
