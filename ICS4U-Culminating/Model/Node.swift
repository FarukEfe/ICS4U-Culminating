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


// AS YOU PUT IN THE PARAGRAPHS CAN YOU CHECK TO SEE IF I GOT THE EDGES RIGHT?
// IK INDEX 0 WON'T BE WHAT WE USE FOR THE END BUT FOR NOW IT'S GOOD
let nodes = [
    Node(id: 1, paragraphs: ["You are a mountain climber. Three years ago you spent the summer at a climbing school in the mountains of Colorado. Your instructors said that you had natural skills as a climber. You made rapid progress, and by the end of the summer you were leading difficult rock and ice climbs.", "That summer, you became close friends with a boy named Carlos. The two of you made a good climbing team. Last year you and he were chosen to join an international team. The expedition made it to the top of two unclimbed peaks in South America.", "One night on that expedition, the group was seated around the cook tent at the base camp. The expedition leader, Franz, told stories of climbing in the Himalayas, the highest mountains in the world."], image: nil, edges: [2]),
    Node(id: 2, paragraphs: [""], image: "IMAGE GOES HERE", edges: [3]),
    Node(id: 3, paragraphs: [""], image: "IMAGE GOES HERE", edges: [4]),
    Node(id: 4, paragraphs: [""], image: nil, edges: [5]),
    Node(id: 5, paragraphs: [""], image: nil, edges: [7, 8]),
    Node(id: 7, paragraphs: [""], image: nil, edges: [9, 13]),
    Node(id: 9, paragraphs: [""], image: nil, edges: [15, 20]),
    Node(id: 15, paragraphs: [""], image: nil, edges: [32]),
    Node(id: 32, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 20, paragraphs: [""], image: nil, edges: [31]),
    Node(id: 31, paragraphs: [""], image: nil, edges: [43, 45]),
    Node(id: 43, paragraphs: [""], image: nil, edges: [58, 62]),
    Node(id: 58, paragraphs: [""], image: nil, edges: [77, 80]),
    Node(id: 77, paragraphs: [""], image: nil, edges: [91, 95]),
    Node(id: 91, paragraphs: [""], image: nil, edges: [101]),
    Node(id: 101, paragraphs: [""], image: nil, edges: [133]),
    Node(id: 133, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 95, paragraphs: [""], image: nil, edges: [106]),
    Node(id: 106, paragraphs: [""], image: nil, edges: [111]),
    Node(id: 111, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 80, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 62, paragraphs: [""], image: nil, edges: [81, 82]),
    Node(id: 81, paragraphs: [""], image: nil, edges: [110]),
    Node(id: 110, paragraphs: [""], image: nil, edges: [82]),
    Node(id: 82, paragraphs: [""], image: nil, edges: [96, 98]),
    Node(id: 96, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 98, paragraphs: [""], image: nil, edges: [109]),
    Node(id: 109, paragraphs: [""], image: nil, edges: [60]),
    Node(id: 60, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 45, paragraphs: [""], image: nil, edges: [55, 57]),
    Node(id: 55, paragraphs: [""], image: nil, edges: [76]),
    Node(id: 76, paragraphs: [""], image: nil, edges: [78]),
    Node(id: 45, paragraphs: [""], image: nil, edges: [55, 57]),
    Node(id: 55, paragraphs: [""], image: nil, edges: [76]),
    Node(id: 76, paragraphs: [""], image: nil, edges: [78]),
    Node(id: 78, paragraphs: [""], image: nil, edges: [100, 102]),
    Node(id: 100, paragraphs: [""], image: nil, edges: [104]),
    Node(id: 104, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 102, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 57, paragraphs: [""], image: nil, edges: [75]),
    Node(id: 75, paragraphs: [""], image: nil, edges: [73]),
    Node(id: 73, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 13, paragraphs: [""], image: nil, edges: [14]),
    Node(id: 14, paragraphs: [""], image: nil, edges: [22, 23]),
    Node(id: 22, paragraphs: [""], image: nil, edges: [34]),
    Node(id: 34, paragraphs: [""], image: nil, edges: [21]),
    Node(id: 21, paragraphs: [""], image: nil, edges: [46, 47]),
    Node(id: 46, paragraphs: [""], image: nil, edges: [59, 64]),
    Node(id: 47, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 59, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 64, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 23, paragraphs: [""], image: nil, edges: [33, 38]),
    Node(id: 38, paragraphs: [""], image: nil, edges: [50, 48]),
    Node(id: 48, paragraphs: [""], image: nil, edges: [49]),
    Node(id: 49, paragraphs: [""], image: nil, edges: [68]),
    Node(id: 68, paragraphs: [""], image: nil, edges: [69]),
    Node(id: 69, paragraphs: [""], image: nil, edges: [88, 89]),
    Node(id: 88, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 89, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 50, paragraphs: [""], image: nil, edges: [65, 67]),
    Node(id: 65, paragraphs: [""], image: nil, edges: [86, 87]),
    Node(id: 86, paragraphs: [""], image: nil, edges: [37, 114]),
    Node(id: 87, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 37, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 114, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 67, paragraphs: [""], image: nil, edges: [85, 83]),
    Node(id: 83, paragraphs: [""], image: nil, edges: [99]),
    Node(id: 99, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 85, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 8, paragraphs: [""], image: nil, edges: [10]),
    Node(id: 10, paragraphs: [""], image: nil, edges: [16, 19]),
    Node(id: 16, paragraphs: [""], image: nil, edges: [24, 27]),
    Node(id: 24, paragraphs: [""], image: nil, edges: [26]),
    Node(id: 26, paragraphs: [""], image: nil, edges: [40, 116]),
    Node(id: 40, paragraphs: [""], image: nil, edges: [51, 63]),
    Node(id: 63, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 51, paragraphs: [""], image: nil, edges: [70, 72]),
    Node(id: 70, paragraphs: [""], image: nil, edges: [90, 92]),
    Node(id: 90, paragraphs: [""], image: nil, edges: [92]),
    Node(id: 92, paragraphs: [""], image: nil, edges: [97]),
    Node(id: 97, paragraphs: [""], image: nil, edges: [112]),
    Node(id: 112, paragraphs: [""], image: nil, edges: [113]),
    Node(id: 113, paragraphs: [""], image: nil, edges: [107]),
    Node(id: 107, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 72, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 116, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 27, paragraphs: [""], image: nil, edges: [39, 42]),
    Node(id: 39, paragraphs: [""], image: nil, edges: [52, 54]),
    Node(id: 52, paragraphs: [""], image: nil, edges: [24]),
    Node(id: 54, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 19, paragraphs: [""], image: nil, edges: [28, 29]),
    Node(id: 28, paragraphs: [""], image: nil, edges: [0]),
    Node(id: 29, paragraphs: [""], image: nil, edges: [0]),
]
