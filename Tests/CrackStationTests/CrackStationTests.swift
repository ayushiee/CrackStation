import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    
    /// Test to check that package response is "nil" when empty string is entered
    func testIsEmptyString() throws {
        let mockInput: String = ""
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
    }
    
    /// Test to check that package response is "nil" when string is more than 3
    func testIsNotValidForLongerStrings() throws {
        let mockInput: String = "abcd"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
    }
    
    /// Test to check that package response is "nil" when incorrect hash is given
    func testIsNotValidForIncorrectHash() throws {
        let mockInput: String = "3fffd018d2223020be85670d93f565b63df54a9ce3ed2cdf6347a61df016938w"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
    }
}
