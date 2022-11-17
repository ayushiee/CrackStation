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
    func testIsSHA2StringLength2Decryptable() throws {
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
    
    /// Test to check SHA1 hash string exists and matches a decrypted string of for single special character.
    func testIsSHA1String1SpecialCharDecryptable() throws {
        let mockInputExclamation: String = "0ab8318acaf6e678dd02e2b5c343ed41111b393d"
        let expectedAnswerExclamation: String = "!"
        
        let mockInputQuestionMark: String = "5bab61eb53176449e25c2c82f172b82cb13ffb9d"
        let expectedAnswerQuestionMark: String = "?"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA2 hash string exists and matches a decrypted string of for single special character.
    func testIsSHA2String1SpecialCharDecryptable() throws {
        let mockInputExclamation: String = "bb7208bc9b5d7c04f1236a82a0093a5e33f40423d5ba8d4266f7092c3ba43b62"
        let expectedAnswerExclamation: String = "!"
        
        let mockInputQuestionMark: String = "8a8de823d5ed3e12746a62ef169bcf372be0ca44f0a1236abc35df05d96928e1"
        let expectedAnswerQuestionMark: String = "?"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA1 hash string exists and matches a decrypted string of for length 2 with special characters.
    func testIsSHA1StringLength2WithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "34800e15707fae815d7c90d49de44aca97e2d759"
        let expectedAnswerExclamation: String = "a!"
        
        let mockInputQuestionMark: String = "4c803fb597d3b97e44e90b6b090186885eef4118"
        let expectedAnswerQuestionMark: String = "b?"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA2 hash string exists and matches a decrypted string of for length 2 with special characters.
    func testIsSHA2StringLength2WithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "8faf838e27d8b53956614af56e7a87d24d0bc8b650eeea9864009dcad461c6d4"
        let expectedAnswerExclamation: String = "!?"
        
        let mockInputQuestionMark: String = "b2b79717f4225259153284e6477c05e2cb9244b5a144ce38102f2222c065a5ad"
        let expectedAnswerQuestionMark: String = "?o"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA1 hash string exists and matches a decrypted string of for length 3 with special characters.
    func testIsSHA1StringLength3WithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "bd58250ad49713a324cfd7b728dbe9fe34249793"
        let expectedAnswerExclamation: String = "a!R"
        
        let mockInputQuestionMark: String = "5ea40df6e9edf06307f898f4f85ae2f97e3a5891"
        let expectedAnswerQuestionMark: String = "a??"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
    }
    
    /// Test to check SHA2 hash string exists and matches a decrypted string of for length 3 with special characters.
    func testIsSHA2StringLength3WithSpecialCharDecryptable() throws {
        let mockInputExclamation: String = "6e8479707ed5b73647ece26aae6c5f62cb3d5154cda5430e00cf14c68deecf94"
        let expectedAnswerExclamation: String = "b!Z"
        
        let mockInputQuestionMark: String = "8c0feec88847c8f8639f6890058aeb03037ecc7852c5712b5317a56eb5178684"
        let expectedAnswerQuestionMark: String = "?wb"
        
        let crackStation = CrackStation()
        let exclamationResponse = crackStation.decrypt(shaHash: mockInputExclamation)
        let questionMarkResponse = crackStation.decrypt(shaHash: mockInputQuestionMark)
        
        XCTAssertNotNil(exclamationResponse)
        XCTAssertNotNil(questionMarkResponse)
        XCTAssert(exclamationResponse == expectedAnswerExclamation)
        XCTAssert(questionMarkResponse == expectedAnswerQuestionMark)
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
