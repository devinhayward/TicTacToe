import XCTest
@testable import TicTacToe

@available(OSX 10.15, *)
final class TicTacToeTests: XCTestCase {
   
    func testBoardMove() {
        let model = GameModel()
        
        // make a move with current player; should be X as default; and check that this registers in the board model
        model.MBoard.makeMove(location: (1, 1), Cplayer: model.CurrentPlayer)
        let answer = model.giveMeAString(Cpostion: (1, 1))
        XCTAssertEqual(answer, "X", "the move did not register in the board")
    }
    
    func testBoardMove2() {
        // initialize the model and make one move
        let model = GameModel()
        model.MBoard.makeMove(location: (1, 1), Cplayer: model.CurrentPlayer)
        
        // change the current player and check that equality still applies
        model.CurrentPlayer = TicTacToe.player.y
        model.MBoard.makeMove(location: (0, 0), Cplayer: model.CurrentPlayer)
        let answer2 = model.giveMeAString(Cpostion: (0, 0))
        XCTAssertEqual(answer2, "Y", "the 2nd move did not register in the board")
    }
    
    func testCurrentPlayerXText() {
        let model = GameModel()
        let answer = model.CurrentPlayer.playerString()
        XCTAssertEqual(answer, "Player X", "Player X text did not work")
    }
    
    func testCurrentPlayerYText() {
        let model = GameModel()
        model.CurrentPlayer = TicTacToe.player.y
        let answer = model.CurrentPlayer.playerString()
        XCTAssertEqual(answer, "Player Y", "Player Y text did not work")
    }
}
