//
//  Model.swift
//  
//
//  Created by Devin Hayward on 2020-04-10.
//

import SwiftUI

@available(iOS 13, OSX 10.15, *)
public class GameModel: ObservableObject {
    @Published public var MBoard: TicTacToe
    @Published public var CurrentPlayer: TicTacToe.player
    
    public init(board: TicTacToe = TicTacToe(), player: TicTacToe.player = TicTacToe.player.x) {
        self.MBoard = board
        self.CurrentPlayer = player
    }
    
    public func giveMeAString(Cpostion: (Int, Int)) -> String {
        let square = self.MBoard.board[Cpostion.0][Cpostion.1]
        if square == 1 {
            return "X"
        }else if square == -1 {
            return "Y"
        }
        return "O"
    }
}

