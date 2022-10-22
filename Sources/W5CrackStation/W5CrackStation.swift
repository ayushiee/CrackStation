import Foundation
import CryptoKit

@available(macOS 10.15, *)
public struct W5CrackStation {
    public init() {
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
    
    /// Generates a SHA1 hash lookup dict for [a-zA-Z0-9]
    func generateHashDict() -> [String: String]{
        var hashDict: [String: String] = [:]
        
        for value in UnicodeScalar("a").value...UnicodeScalar("z").value {
            let char = String(UnicodeScalar(value)!)
            hashDict[encryptUsingSha1(from: char)] = char
        }
        
        for value in UnicodeScalar("A").value...UnicodeScalar("Z").value {
            let char = String(UnicodeScalar(value)!)
            hashDict[encryptUsingSha1(from: char)] = char
        }
        
        for value in UnicodeScalar("0").value...UnicodeScalar("1").value {
            let char = String(UnicodeScalar(value)!)
            hashDict[encryptUsingSha1(from: char)] = char
        }
        
        return hashDict
    }
    
    /// Decrypt the passed hash to corresponding alphabet string
    public func crack(from password: String) -> String?{
        let hash = generateHashDict()
        return String(hash[password] ?? "It cannot be cracked right now!")
    }
}
