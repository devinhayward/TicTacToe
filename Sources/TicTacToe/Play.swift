//
//  Play.swift
//  
//
//  Created by Devin Hayward on 2020-04-10.
//

//create a method to check for the various wins
public extension TicTacToe {
    //check for a win
    func isWin(_ playerC: player) -> Bool {
        let winRow = [playerC.rawValue, playerC.rawValue, playerC.rawValue]
        //check for a row win
        for i in 0..<3 {
            if board[i] == winRow {
                return true
            }
        }
        //check for a column win
        for col in 0..<3 {
            if [board[0][col], board[1][col], board[2][col]] == winRow {
                return true
            }
        }
        //check for diagional win
        let dia1 = [board[0][1], board[1][1], board[2][2]]
        let dia2 = [board[0][2], board[1][1], board[2][0]]
        if dia1 == winRow || dia2 == winRow {
            return true
        }
        
        return false //there is not a win currently
    }
}

//make a function to allow for a player to make a play
public extension TicTacToe {
    mutating func makeMove(location: (Int, Int), Cplayer: player) {
        //check if the location is available
        guard board[location.0][location.1] == player.free.rawValue else {
            fatalError()
        }
        board[location.0][location.1] = Cplayer.rawValue
    }
}

