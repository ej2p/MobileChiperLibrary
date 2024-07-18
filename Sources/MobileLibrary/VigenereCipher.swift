import Foundation

class VigenereCipher {
    private let key: String

    init(key: String) {
        self.key = key
    }

    func encrypt(_ plaintext: String) -> String {
        let keyRepeat = String(repeating: key, count: (plaintext.count / key.count) + 1).prefix(plaintext.count)
        return zip(plaintext, keyRepeat).map { (char, keyChar) -> String in
            let plaintextValue = Int(char.asciiValue ?? 0)
            let keyCharValue = Int(keyChar.asciiValue ?? 0)
            let encryptedValue = (plaintextValue + keyCharValue) % 26
            return String(UnicodeScalar(encryptedValue + 65)!)
        }.joined()
    }

    func decrypt(_ ciphertext: String) -> String {
        let keyRepeat = String(repeating: key, count: (ciphertext.count / key.count) + 1).prefix(ciphertext.count)
        return zip(ciphertext, keyRepeat).map { (char, keyChar) -> String in
            let ciphertextValue = Int(char.asciiValue ?? 0)
            let keyCharValue = Int(keyChar.asciiValue ?? 0)
            let decryptedValue = (ciphertextValue - keyCharValue + 26) % 26
            return String(UnicodeScalar(decryptedValue + 65)!)
        }.joined()
    }
}

