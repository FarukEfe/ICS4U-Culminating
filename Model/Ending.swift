//
//  Ending.swift
//  CLI
//
//  Created by Vincent Cloutier on 2022-06-06.
//

import Foundation

struct Ending: Decodable, Hashable {
    let classification: TypeOfEnding
    let description: String
}
