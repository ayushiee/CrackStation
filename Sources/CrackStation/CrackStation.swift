import Foundation
import CryptoKit

enum Hash {
    case SHA1, SHA256
}

@available(macOS 10.15, *)
public struct CrackStation: Decrypter {
    var hashDict: [String: String] = [:]
    
    public init() {
            hashDict = generateHashDict()
    }
    
    /// Input: string, hashing algorithm
    /// Output: corresponding hash
    func encrypt(from input: String, hash: Hash) -> String {
        let inputData = Data(input.utf8)
        let cacheStr: String
        let result: String
        
        switch(hash) {
        case .SHA1:
            let output = Insecure.SHA1.hash(data: inputData)
            cacheStr = "SHA1 digest:"
            result = output.description
        case .SHA256:
            let output256 = SHA256.hash(data: inputData)
            cacheStr = "SHA256 digest:"
            result = output256.description
        }
        
        let str = result.range(of: cacheStr)
        return result[str!.upperBound...].trimmingCharacters(in: .whitespaces)
    }
    
    
    /// Generates a SHA1 hash lookup dict for [a-zA-Z0-9]
    func generateHashDict() -> [String: String]{
        var hashDict: [String: String] = [:]
        
        let possibleChar = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

        for letter in possibleChar {
            // Generating strings of length 1
            var generatedStr: String = ""
            generatedStr.append(letter)
            
            hashDict[encrypt(from: generatedStr, hash: Hash.SHA1)] = generatedStr
            hashDict[encrypt(from: generatedStr, hash: Hash.SHA256)] = generatedStr
            
            for secondLetter in possibleChar {
                // Generating strings of length 2
                var generatedStr: String = ""
                generatedStr.append(letter)
                generatedStr.append(secondLetter)
                
                hashDict[encrypt(from: generatedStr, hash: Hash.SHA1)] = generatedStr
                hashDict[encrypt(from: generatedStr, hash: Hash.SHA256)] = generatedStr
            }
        }
        
        return hashDict
    }
    
    /// Decrypt the passed hash to corresponding alphabet string
    public func decrypt(shaHash: String) -> String?{
        return hashDict[shaHash]
    }
}
