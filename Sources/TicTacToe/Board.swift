//
//  Board.swift
//
//
//  Created by Devin Hayward on 2020-04-10.
//
import Foundation

public struct TicTacToe: Identifiable {
    public var id: ObjectIdentifier
    
    public var board: [[Int]]
}

//add enum to represent the players, and state of the board cells, also return the integer representations
public extension TicTacToe {
    enum player: Int {
        case free = 0, x = 1, y = -1
        
        public func playerString() -> String {
            switch self {
            case .x:
                return "Player X"
            case .y:
                return "Player Y"
            case .free:
                return ""
            }
        }
    }
}

//create an initializator for the board; 3 rows of free cells
public extension TicTacToe {
    init() {
        self.init(id: ObjectIdentifier(UUID.self) , board: [[Int]](repeating: [Int](repeating: player.free.rawValue, count: 3), count: 3))
    }
}
