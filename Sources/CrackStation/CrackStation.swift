import Foundation

public class CrackStation: Decrypter {
    static private let hashDict: [String: String] = loadDictionaryFromDisk()
    
    required public init() {}
    
    /// Loading hash dictionary from disk
    static private func loadDictionaryFromDisk() -> [String:String] {
        guard let path = Bundle.module.url(forResource: "hashDict", withExtension: "json") else { return [:]}
        do {
            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data)
            return jsonResult as? Dictionary<String, String> ?? [:]
        } catch {
            print("Error: ", error)
            return [:]
        }
    }

    /// Decrypt the passed hash to corresponding alphabet string
    /// Input: encrypted hash string
    /// Returns: password string or nil, if not found
    public func decrypt(shaHash: String) -> String?{
        return Self.hashDict[shaHash]
    }
}
