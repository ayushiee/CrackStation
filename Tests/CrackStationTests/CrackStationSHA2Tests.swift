import XCTest
import CrackStation

final class CrackStationSHA2Tests: XCTestCase {
    
    /// Test to check SHA2 hash string exists and matches a single decrypted alphabet.
    func testIs1LengthStringDecryptable() throws {
        let mockInput: String = "4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33260"
        let expectedAnswer: String = "Q"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssertEqual(decryptedResponse, expectedAnswer)
    }
        
    /// Test to check SHA2 hash string exists and matches a decrypted string of length  2.
    func testIs2LengthStringDecryptable() throws {
        let mockInput: String = "333999a9bccd994204c9fe52393ccc6d5d4385806c1a783dd13b6aa65b286cb2"
        let expectedAnswer: String = "9J"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssertEqual(decryptedResponse, expectedAnswer)
    }
     
    /// Test to check SHA2 hash string exists and matches a decrypted string of length  3.
    func testIs3LengthStringDecryptable() throws {
        let mockInput: String = "10416c41df3e06f92f7ac87da6ef4830f01990c7f95b9112e032ebc59e085a48"
        let expectedAnswer: String = "99S"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssertEqual(decryptedResponse, expectedAnswer)
    }
    
    /// Test to check SHA2 hash string exists and matches a decrypted string of for single special character.
    func testIsSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "bb7208bc9b5d7c04f1236a82a0093a5e33f40423d5ba8d4266f7092c3ba43b62"
        let expectedAnswerExclamation: String = "!"
        
        let mockInputQuestionMark: String = "8a8de823d5ed3e12746a62ef169bcf372be0ca44f0a1236abc35df05d96928e1"
        let expectedAnswerQuestionMark: String = "?"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
     
    /// Test to check SHA2 hash string exists and matches a decrypted string of for length 2 with special characters.
    func testIs2LengthStringWithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "8faf838e27d8b53956614af56e7a87d24d0bc8b650eeea9864009dcad461c6d4"
        let expectedAnswerExclamation: String = "!?"
        
        let mockInputQuestionMark: String = "b2b79717f4225259153284e6477c05e2cb9244b5a144ce38102f2222c065a5ad"
        let expectedAnswerQuestionMark: String = "?o"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
       
    /// Test to check SHA2 hash string exists and matches a decrypted string of for length 3 with special characters.
    func testIs3LengthStringWithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "6e8479707ed5b73647ece26aae6c5f62cb3d5154cda5430e00cf14c68deecf94"
        let expectedAnswerExclamation: String = "b!Z"
        
        let mockInputQuestionMark: String = "8c0feec88847c8f8639f6890058aeb03037ecc7852c5712b5317a56eb5178684"
        let expectedAnswerQuestionMark: String = "?wb"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
     
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 1
    func testIs1LengthStringNotDecryptable() throws {
        let mockInput: String = "4ae81572f06e1b88fd5ced7a1a000945432e83e1551e6f721ee9c00b8cc33261"
        let expectedAnswer: String = "Q"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }
       
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 2
    func testIs2LengthStringNotDecryptable() throws {
        let mockInput: String = "3fffd018d2223020be85670d93f565b63df54a9ce3ed2cdf6347a61df016938D"
        let expectedAnswer: String = "4s"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }
    
    /// Test to check if package fails when incorrect SHA2 hash is entered for a given string of length 3
    func testIs3LengthStringNotDecryptable() throws {
        let mockInput: String = "36baf8eeb4af8614ef4a50e40f2f1d57458b8f5d7897ea9d1c828176503b36fw"
        let expectedAnswer: String = "99a"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }

}
