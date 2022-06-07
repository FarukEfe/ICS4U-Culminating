//
//  Ending.swift
//  iOS
//
//  Created by Vincent Cloutier on 2022-06-03.
//

import Foundation

enum TypeOfEnding: Decodable {
    case good
    case bad
    case ambiguous
}

struct Ending: Decodable, Hashable {
    let classification: TypeOfEnding
    let description: String
}
