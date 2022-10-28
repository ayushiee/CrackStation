import Foundation
import CryptoKit

enum Hash {
    case SHA1, SHA256
}


@available(macOS 10.15, *)
public struct CrackStation: Decrypter {
    public init() {
    }
    
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
    
    /// Input: a string.
    /// Output: the string encrypted using the SHA-1 algorithm.
    func encryptUsingSha1(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: inputData)
        let result = output.description
        let str = result.range(of: "SHA1 digest:")
        return result[str!.upperBound...].trimmingCharacters(in: .whitespaces)
    }
    
    func encryptUsingSha2(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output256 = SHA256.hash(data: inputData)
        let result = output256.description
        let str = result.range(of: "SHA256 digest:")
        return result[str!.upperBound...].trimmingCharacters(in: .whitespaces)
    }
    
    /// Generates a SHA1 hash lookup dict for [a-zA-Z0-9]
    func generateHashDict() -> [String: String]{
        var hashDict: [String: String] = [:]
        
        for value in UnicodeScalar("a").value...UnicodeScalar("z").value {
            let char = String(UnicodeScalar(value)!)
            print("#####: ", encrypt(from: char, hash: Hash.SHA1))
            hashDict[encryptUsingSha1(from: char)] = char
//            hashDict[encryptUsingSha2(from: char)] = char
        }
        
        for value in UnicodeScalar("A").value...UnicodeScalar("Z").value {
            let char = String(UnicodeScalar(value)!)
            hashDict[encryptUsingSha1(from: char)] = char
            hashDict[encryptUsingSha2(from: char)] = char
        }
        
        for value in UnicodeScalar("0").value...UnicodeScalar("9").value {
            let char = String(UnicodeScalar(value)!)
            hashDict[encryptUsingSha1(from: char)] = char
            hashDict[encryptUsingSha2(from: char)] = char
        }

        return hashDict
    }
    
    /// Decrypt the passed hash to corresponding alphabet string
    public func decrypt(shaHash: String) -> String?{
        let hash = generateHashDict()
        return hash[shaHash]
    }
}
