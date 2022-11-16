import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    
    /// Test to check SHA1 hash string exists and matches a single decrypted alphabet.
    func testIsSHA1StringLength1Decryptable() throws {
        let mockInput: String = "95cb0bfd2977c761298d9624e4b4d4c72a39974a"
        let expectedAns: String = "y"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssert(response == expectedAns)
    }
    
    /// Test to check SHA2 hash string exists and matches a single decrypted alphabet.
    func testIsSHA2StringLength1Decryptable() throws {
        let mockInput: String = "4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33260"
        let expectedAns: String = "Q"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssertEqual(response, expectedAns)
    }
    
    /// Test to check SHA1 hash string exists and matches a  decrypted string of length  2.
    func testIsSHA1StringLength2Decryptable() throws {
        let mockInput: String = "a598dee8d381936a050da13e3040cd2a1a4d93b3"
        let expectedAns: String = "8Y"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssertEqual(response, expectedAns)
    }
    
    /// Test to check SHA2 hash string exists and matches a  decrypted string of length  2.
    func testIsSHA256StringLength2Decryptable() throws {
        let mockInput: String = "333999a9bccd994204c9fe52393ccc6d5d4385806c1a783dd13b6aa65b286cb2"
        let expectedAns: String = "9J"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssertEqual(response, expectedAns)
    }
    
    /// Test to check SHA1 hash string exists and matches a  decrypted string of length  3.
    func testIsSHA1StringLength3Decryptable() throws {
        let mockInput: String = "afc97ea131fd7e2695a98ef34013608f97f34e1d"
        let expectedAns: String = "999"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssert(response == expectedAns)
    }
    
    /// Test to check SHA2 hash string exists and matches a  decrypted string of length  3.
    func testIsSHA2StringLength3Decryptable() throws {
        let mockInput: String = "10416c41df3e06f92f7ac87da6ef4830f01990c7f95b9112e032ebc59e085a48"
        let expectedAns: String = "99S"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(response)
        XCTAssertEqual(response, expectedAns)
    }
    
    
    /// Test to check if package fails when incorrect  SHA1 hash is entered for a given string of length 1
    func testIsSHA1StringOfLength1NotDecryptable() throws {
        let mockInput: String = "95cb0bfd2977c761298d9624e4b4d4c72a39974b"
        let expectedAns: String = "y"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 1
    func testIsSHA2StringOfLength1NotDecryptable() throws {
        let mockInput: String = "4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33261"
        let expectedAns: String = "Q"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    /// Test to check if package fails when incorrect SHA1 hash is entered for a given string of length 2
    func testIsSHA1StringOfLength2NotDecryptable() throws {
        let mockInput: String = "60c7577bedfcb6176130615c3efd0c05533a4c7e"
        let expectedAns: String = "yE"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 2
    func testIsSHA2StringOfLength2NotDecryptable() throws {
        let mockInput: String = "3fffd018d2223020be85670d93f565b63df54a9ce3ed2cdf6347a61df016938D"
        let expectedAns: String = "4s"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    /// Test to check if package fails when incorrect SHA1 hash is entered for a given string of length 3
    func testIsSHA1StringOfLength3NotDecryptable() throws {
        let mockInput: String = "c081b1ac6953cf87b2a50661edf3eb091cd6d9dbd"
        let expectedAns: String = "9yE"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 3
    func testIsSHA2StringOfLength3NotDecryptable() throws {
        let mockInput: String = "36baf8eeb4af8614ef4a50e40f2f1d57458b8f5d7897ea9d1c828176503b36fw"
        let expectedAns: String = "99a"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
        XCTAssertFalse(response == expectedAns)
    }
    
    
    /// Test to check that package response is "nil" when empty string is entered
    func testIsEmptyString() throws {
        let mockInput: String = ""
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
    }
    
    /// Test to check that package response is "nil" when string is more than 3
    func testIsNotValidForLongerStrings() throws {
        let mockInput: String = "abcd"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
    }
    
    /// Test to check that package response is "nil" when incorrect hash is given
    func testIsNotValidForIncorrectHash() throws {
        let mockInput: String = "3fffd018d2223020be85670d93f565b63df54a9ce3ed2cdf6347a61df016938w"
        
        let crackStation = CrackStation()
        let response = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(response)
    }
}
