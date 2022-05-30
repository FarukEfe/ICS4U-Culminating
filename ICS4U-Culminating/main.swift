//
//  main.swift
//  ICS4U-Culminating
//
//  Created by Vincent Cloutier on 2022-05-25.
//

import Foundation

// MARK: View Model
var myNodeList = NodesList()

// MARK: Game Cycle Properties
var node: Node? = nil
var previousNodes: [Node] = []
var screenMode: String = "MAIN MENU"

// MARK: Command Line App Cycles
// Main Screen
func mainScreenCycle() {
    print("0 - Quit\n1 - Start\n2 - Game History\n3 - Settings\n")
    let mainInput = readLine()
    
    if mainInput == "0" {
        previousNodes = []
        node = nil
        exit(0)
    } else if mainInput == "1" {
        screenMode = "GAME ON"
    } else if mainInput == "2" {
        screenMode = "GAME HISTORY"
    } else if mainInput == "3" {
        screenMode = "SETTINGS"
    } else {
        print("Please enter a valid input (either 0,1,2, or 3)")
    }
}

// Game On
func gameOnCycle() {
    node = myNodeList.findNode(with: 1, from: myNodeList.gameNodes)
    previousNodes.append(node!)
    
    while screenMode == "GAME ON" {
        // Display node paragraphs
        for paragraph in node!.paragraphs {
            print("\n\(paragraph)")
        }

        // Evaluating User Destination Input
        var shouldReappear = true
        // If it is the end, then provide 3 options
        if node!.ending {
            while shouldReappear {
                print("\nTHE END\n\n0 - Quit\n1 - Main Menu\n2 - Start Again\n")
                let userResponse = readLine()
                
                switch userResponse {
                    case "0":
                        exit(0)
                    case "1":
                        shouldReappear = false
                        screenMode = "MAIN MENU"
                        node = nil
                        previousNodes = []
                    case "2":
                        shouldReappear = false
                        node = myNodeList.findNode(with: 1, from: myNodeList.gameNodes)
                        previousNodes = []
                        previousNodes.append(node!)
                    default:
                        print("\nPlease provide a valid answer")
                }
            }
        } else {
            while shouldReappear {
                print("\n")
                if node!.edges.count > 1 {
                    for edge in node!.edges {
                        print("\(edge.destinationId) - \(edge.prompt!)")
                    }
                } else {
                    print("\nType \"1\" to continue\n")
                }
                
                let userResponse = readLine()?.replacingOccurrences(of: " ", with: "")
                
                if let userPath = Int(userResponse!) {
                    if node!.edges.count == 1 {
                        if userPath == 1 {
                            node = myNodeList.findNode(with: node!.edges[0].destinationId, from: myNodeList.gameNodes)
                            shouldReappear = false
                        }
                    } else {
                        for edge in node!.edges {
                            if edge.destinationId == userPath {
                                node = myNodeList.findNode(with: userPath, from: myNodeList.gameNodes)
                                shouldReappear = false
                                break
                            }
                        }
                    }
                    
                    if shouldReappear {
                        print("\nPlease provide a destination out of the choices given to you")
                    }
                    
                } else {
                    print("\nPlease provide a valid destination")
                }
            }
        }
    }
}

// Game History
func gameHistoryCycle() {
    
}

// Settings
func settingsCycle() {
    
}

print("\nWelcome to the game!\n")
while true {
    switch screenMode {
        case "MAIN MENU":
            mainScreenCycle()
        case "GAME ON":
            gameOnCycle()
        case "GAME HISTORY":
            //gameHistoryCycle()
            exit(0)
        case "SETTINGS":
            //settingsCycle()
            exit(0)
        default:
            print("Invalid screen mode, terminating the game")
            exit(0)
    }
}
