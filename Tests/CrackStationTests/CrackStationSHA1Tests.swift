import XCTest
import CrackStation

final class CrackStationSHA1Tests: XCTestCase {
    
    /// Test to check SHA1 hash string exists and matches a single decrypted alphabet.
    func testIs1LengthStringDecryptable() throws {
        let mockInput: String = "95cb0bfd2977c761298d9624e4b4d4c72a39974a"
        let expectedAnswer: String = "y"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssert(decryptedResponse == expectedAnswer)
    }
        
    /// Test to check SHA1 hash string exists and matches a  decrypted string of length  2.
    func testIs2LengthStringDecryptable() throws {
        let mockInput: String = "a598dee8d381936a050da13e3040cd2a1a4d93b3"
        let expectedAnswer: String = "8Y"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssertEqual(decryptedResponse, expectedAnswer)
    }
        
    /// Test to check SHA1 hash string exists and matches a decrypted string of length  3.
    func testIs3LengthStringDecryptable() throws {
        let mockInput: String = "afc97ea131fd7e2695a98ef34013608f97f34e1d"
        let expectedAnswer: String = "999"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNotNil(decryptedResponse)
        XCTAssert(decryptedResponse == expectedAnswer)
    }
        
    /// Test to check SHA1 hash string exists and matches a decrypted string of for single special character.
    func testIsSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "0ab8318acaf6e678dd02e2b5c343ed41111b393d"
        let expectedAnswerExclamation: String = "!"
        
        let mockInputQuestionMark: String = "5bab61eb53176449e25c2c82f172b82cb13ffb9d"
        let expectedAnswerQuestionMark: String = "?"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
       
    /// Test to check SHA1 hash string exists and matches a decrypted string of for length 2 with special characters.
    func testIs2LengthStringWithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "34800e15707fae815d7c90d49de44aca97e2d759"
        let expectedAnswerExclamation: String = "a!"
        
        let mockInputQuestionMark: String = "4c803fb597d3b97e44e90b6b090186885eef4118"
        let expectedAnswerQuestionMark: String = "b?"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA1 hash string exists and matches a decrypted string of for length 3 with special characters.
    func testIs3LengthStringWithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "bd58250ad49713a324cfd7b728dbe9fe34249793"
        let expectedAnswerExclamation: String = "a!R"
        
        let mockInputQuestionMark: String = "5ea40df6e9edf06307f898f4f85ae2f97e3a5891"
        let expectedAnswerQuestionMark: String = "a??"
        
        let crackStation = CrackStation()
        let exclamationDecryptedResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkDecryptedResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationDecryptedResponse)
        XCTAssertNotNil(questionMarkDecryptedResponse)
        XCTAssert(exclamationDecryptedResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkDecryptedResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check if package fails when incorrect  SHA1 hash is entered for a given string of length 1
    func testIs1LengthStringNotDecryptable() throws {
        let mockInput: String = "95cb0bfd2977c761298d9624e4b4d4c72a39974b"
        let expectedAnswer: String = "y"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }
    
    /// Test to check if package fails when incorrect SHA1 hash is entered for a given string of length 2
    func testIs2LengthStringNotDecryptable() throws {
        let mockInput: String = "60c7577bedfcb6176130615c3efd0c05533a4c7e"
        let expectedAnswer: String = "yE"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }
    
    /// Test to check if package fails when incorrect SHA1 hash is entered for a given string of length 3
    func testIs3LengthStringNotDecryptable() throws {
        let mockInput: String = "c081b1ac6953cf87b2a50661edf3eb091cd6d9dbd"
        let expectedAnswer: String = "9yE"
        
        let crackStation = CrackStation()
        let decryptedResponse = crackStation.decrypt(shaHash: mockInput)
        
        XCTAssertNil(decryptedResponse)
        XCTAssertFalse(decryptedResponse == expectedAnswer)
    }

}
