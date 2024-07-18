# MobileChiperLibrary

- `MobileChiperLibrary`는 여러 가지 암호화 알고리즘을 제공하는 Swift 기반 라이브러리입니다. 

- 이 라이브러리를 사용하여 Text 데이터를 안전하게 암호화하고 복호화할 수 있습니다. 

- 이 라이브러리는 세 가지 주요 암호화 방식을 제공합니다 : XOR 암호화, Caesar 암호화, Vigenere 암호화.


## 설치 방법

### Swift Package Manager (SPM)

`MobileChiperLibrary`를 프로젝트에 추가하려면, `Package.swift` 파일에 다음 내용을 추가하세요:

```swift
dependencies: [
    .package(url: "https://github.com/ej2p/MobileChiperLibrary.git", from: "1.0.1")
]
```

그런 다음, 타겟에 MobileLibrary를 추가하세요:

```swift
.target(
    name: "YourTargetName",
    dependencies: [
        "MobileLibrary"
    ]
),
```

### CocoaPods

`MobileChiperLibrary`를 CocoaPods을 통해 설치하려면, `Podfile`에 다음 내용을 추가하세요:

```swift
pod 'MobileLibrary', '~> 1.0.1'
```

그런 다음, 터미널에서 pod install 명령어를 실행하여 라이브러리를 설치하세요:

```swift
pod install
```


## 기능 및 사용 방법

MobileLibrary를 사용하여 텍스트 데이터를 암호화하고 복호화하는 방법은 매우 간단합니다. 라이브러리는 세 가지 주요 암호화 방식(XOR, Caesar, Vigenere)을 지원합니다.

### 초기화

아래 예시에서는 기본 설정을 사용하여 MobileLibrary를 초기화합니다:

```swift
import MobileLibrary

let mobileLibrary = MobileLibrary(xorKey: 0x55, caesarShift: 3, vigenereKey: "KEY")
```

### JongmunChipher(XOR) 암호화

```swift
let plaintext = "Hello, World!"
if let encrypted = mobileLibrary.jongmunEncrypt(plaintext) {
    print("Encrypted (Jongmun): \(encrypted)")
    if let decrypted = mobileLibrary.jongmunDecrypt(encrypted) {
        print("Decrypted (Jongmun): \(decrypted)")
    }
}
```

### SoheeChipher(Caesar) 암호화

```swift
let plaintext = "Hello, World!"
let encrypted = mobileLibrary.soheeEncrypt(plaintext)
print("Encrypted (Sohee): \(encrypted)")
let decrypted = mobileLibrary.soheeDecrypt(encrypted)
print("Decrypted (Sohee): \(decrypted)")
```

### SeonghunChipher(Vigenere) 암호화

```swift
let plaintext = "Hello, World!"
let encrypted = mobileLibrary.seonghunEncrypt(plaintext)
print("Encrypted (Seonghun): \(encrypted)")
let decrypted = mobileLibrary.seonghunDecrypt(encrypted)
print("Decrypted (Seonghun): \(decrypted)")
```


## 기여

이 프로젝트에 기여하고 싶으시다면, GitHub 이슈를 통해 버그 신고나 기능 제안을 해주세요. 모든 기여는 환영합니다!
이 프로젝트는 MIT 라이선스를 따릅니다. 자세한 내용은 LICENSE 파일을 확인해 주세요.


## 라이선스

이 프로젝트는 MIT 라이선스에 따라 라이선스가 부여됩니다. 자세한 내용은 LICENSE 파일을 참고하세요.
