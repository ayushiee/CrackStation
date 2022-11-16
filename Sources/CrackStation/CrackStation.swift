import Foundation
import CryptoKit

enum Hash {
    case SHA1, SHA256
}

public class CrackStation: Decrypter {
    private var hashDict: [String: String] = [:]
    
    required public init() {
        do {
            hashDict = try loadDictionaryFromDisk()
            if hashDict.isEmpty {
                print("Lookup table dictionary does not exist. Please generate that first!")
            }
        } catch {
            print("Error: ", error)
        }
    }
    
    public func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "hashDict", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)
        
        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }

    /// Decrypt the passed hash to corresponding alphabet string
    public func decrypt(shaHash: String) -> String?{
        return hashDict[shaHash]
    }
}
