import XCTest
@testable import TicTacToe

final class TicTacToeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TicTacToe().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
