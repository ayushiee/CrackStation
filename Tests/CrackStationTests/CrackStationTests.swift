import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {

    /// Test to check hash string exists and matches a single decrypted alphabet.
    func testIsDecryptable() throws {
        let mockInput = "95cb0bfd2977c761298d9624e4b4d4c72a39974a"
        let expectedAns = "y"
        
        let crackStation = CrackStation()
        let response = crackStation.crack(from: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssert(response == expectedAns)
    }

    /// Test to check if package fails when incorrect hash is entered for a given alphabet
    func testIsNotDecryptable() throws {
        let mockInput = "95cb0bfd2977c761298d9624e4b4d4c72a39974b"
        let expectedAns = "y"
        
        let crackStation = CrackStation()
        let response = crackStation.crack(from: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssert(response == "It cannot be cracked right now!")
        XCTAssertFalse(response == expectedAns)
    }
}