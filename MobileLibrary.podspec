Pod::Spec.new do |spec|

  spec.name         = "MobileLibrary"
  spec.version      = "1.0.0"
  spec.summary      = "MobileLibrary는 여러 가지 암호화 알고리즘을 제공하는 Swift 기반 라이브러리입니다."

  spec.description  = <<-DESC
    이 라이브러리를 사용하여 Text 데이터를 안전하게 암호화하고 복호화할 수 있습니다.
    이 라이브러리는 세 가지 주요 암호화 방식을 제공합니다 : XOR 암호화, Caesar 암호화, Vigenere 암호화.
                   DESC

  spec.homepage     = "https://github.com/ej2p/MobileChiperLibrary"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "eunjin" => "eunjin.kim@illuminarean.com" }

  spec.ios.deployment_target = "15.0"
  spec.swift_version = "5.9"


  spec.source       = { :git => "https://github.com/ej2p/MobileChiperLibrary.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/MobileLibrary/**/*"

end
