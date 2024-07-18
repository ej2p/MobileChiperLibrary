import Foundation

public extension String {
    func xorEncrypted() -> String? {
        let library = MobileLibrary()
        return library.jongmunEncrypt(self)
    }

    func xorDecrypted() -> String? {
        let library = MobileLibrary()
        return library.jongmunDecrypt(self)
    }

    func caesarEncrypted() -> String {
        let library = MobileLibrary()
        return library.soheeEncrypt(self)
    }

    func caesarDecrypted() -> String {
        let library = MobileLibrary()
        return library.soheeDecrypt(self)
    }

    func vigenereEncrypted() -> String {
        let library = MobileLibrary()
        return library.seonghunEncrypt(self)
    }

    func vigenereDecrypted() -> String {
        let library = MobileLibrary()
        return library.seonghunDecrypt(self)
    }
}
