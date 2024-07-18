import Foundation

class CaesarCipher {
    private let shift: Int

    init(shift: Int) {
        self.shift = shift
    }

    func encrypt(_ plaintext: String) -> String {
        return String(plaintext.unicodeScalars.map { scalar in
            let value = Int(scalar.value)
            if let shiftedScalar = UnicodeScalar((value + shift - 65) % 26 + 65) {
                return Character(shiftedScalar)
            } else {
                return Character(scalar)
            }
        })
    }

    func decrypt(_ ciphertext: String) -> String {
        return String(ciphertext.unicodeScalars.map { scalar in
            let value = Int(scalar.value)
            if let shiftedScalar = UnicodeScalar((value - shift - 65 + 26) % 26 + 65) {
                return Character(shiftedScalar)
            } else {
                return Character(scalar)
            }
        })
    }
}
