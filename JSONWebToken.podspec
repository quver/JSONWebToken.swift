Pod::Spec.new do |s|
  s.name = "JSONWebToken"
  s.version = "2.2.0"
  s.summary = "Swift library for JSON Web Tokens (JWT)."
  s.homepage = "https://github.com/kylef/JSONWebToken.swift"
  s.license = { :type => "BSD", :file => "LICENSE" }
  s.author = { "Kyle Fuller" => "kyle@fuller.li" }
  s.platform = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => "https://github.com/quver/JSONWebToken.swift.git", :tag => s.version }
  s.source_files = "Sources/*.swift"
  s.requires_arc = true
  s.module_name = 'JWT'
  s.pod_target_xcconfig = {"SWIFT_INCLUDE_PATHS": "$(PODS_ROOT)/JSONWebToken/"}
  s.exclude_files = ["Sources/HMACCryptoSwift.swift"]
end

