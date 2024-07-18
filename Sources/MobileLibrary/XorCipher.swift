import Foundation

class XorCipher {
    private let key: UInt8

    init(key: UInt8) {
        self.key = key
    }

    func encrypt(_ plaintext: String) -> String? {
        guard let data = plaintext.data(using: .utf8) else { return nil }
        let encryptedData = data.map { $0 ^ key }
        return Data(encryptedData).base64EncodedString()
    }

    func decrypt(_ ciphertext: String) -> String? {
        guard let data = Data(base64Encoded: ciphertext) else { return nil }
        let decryptedData = data.map { $0 ^ key }
        return String(data: Data(decryptedData), encoding: .utf8)
    }
}
