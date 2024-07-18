import Foundation

/// Text 암호화 인터페이스 제공 Class 입니다.
public class MobileLibrary {
    private let jongmunCipher: XorCipher
    private let soheeCipher: CaesarCipher
    private let seonghunCipher: VigenereCipher

    public init(xorKey: UInt8 = 0x55, caesarShift: Int = 3, vigenereKey: String = "KEY") {
        self.jongmunCipher = XorCipher(key: xorKey)
        self.soheeCipher = CaesarCipher(shift: caesarShift)
        self.seonghunCipher = VigenereCipher(key: vigenereKey)
    }

    /// JongmunType으로 암호화된 텍스트를 생성합니다.
    ///
    /// 이 메서드는 주어진 평문 텍스트를 Jongmun 암호화 방식으로 암호화합니다.
    ///
    /// - Parameter plaintext: 암호화할 평문 텍스트.
    /// - Returns: 암호화된 텍스트. 암호화 과정에서 문제가 발생하면 `nil`을 반환합니다.
    public func jongmunEncrypt(_ plaintext: String) -> String? {
        return jongmunCipher.encrypt(plaintext)
    }

    /// JongmunType으로 암호화된 텍스트를 복호화합니다.
    ///
    /// 이 메서드는 주어진 암호화된 텍스트를 Jongmun 암호화 방식으로 복호화합니다.
    ///
    /// - Parameter ciphertext: 복호화할 암호화된 텍스트.
    /// - Returns: 복호화된 텍스트. 복호화 과정에서 문제가 발생하면 `nil`을 반환합니다.
    public func jongmunDecrypt(_ ciphertext: String) -> String? {
        return jongmunCipher.decrypt(ciphertext)
    }

    /// Caesar 암호화된 텍스트를 생성합니다.
    ///
    /// 이 메서드는 주어진 평문 텍스트를 Caesar 암호화 방식으로 암호화합니다.
    ///
    /// - Parameter plaintext: 암호화할 평문 텍스트.
    /// - Returns: 암호화된 텍스트.
    public func soheeEncrypt(_ plaintext: String) -> String {
        return soheeCipher.encrypt(plaintext)
    }

    /// Caesar 암호화된 텍스트를 복호화합니다.
    ///
    /// 이 메서드는 주어진 암호화된 텍스트를 Caesar 암호화 방식으로 복호화합니다.
    ///
    /// - Parameter ciphertext: 복호화할 암호화된 텍스트.
    /// - Returns: 복호화된 텍스트.
    public func soheeDecrypt(_ ciphertext: String) -> String {
        return soheeCipher.decrypt(ciphertext)
    }

    /// Vigenere 암호화된 텍스트를 생성합니다.
    ///
    /// 이 메서드는 주어진 평문 텍스트를 Vigenere 암호화 방식으로 암호화합니다.
    ///
    /// - Parameter plaintext: 암호화할 평문 텍스트.
    /// - Returns: 암호화된 텍스트.
    public func seonghunEncrypt(_ plaintext: String) -> String {
        return seonghunCipher.encrypt(plaintext)
    }

    /// Vigenere 암호화된 텍스트를 복호화합니다.
    ///
    /// 이 메서드는 주어진 암호화된 텍스트를 Vigenere 암호화 방식으로 복호화합니다.
    ///
    /// - Parameter ciphertext: 복호화할 암호화된 텍스트.
    /// - Returns: 복호화된 텍스트.
    public func seonghunDecrypt(_ ciphertext: String) -> String {
        return seonghunCipher.decrypt(ciphertext)
    }
}
