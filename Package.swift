// swift-tools-version:5.0

import PackageDescription

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
let excludes = ["HMAC/HMACCryptoSwift.swift"]
#else
let excludes = ["HMAC/HMACCommonCrypto.swift"]
#endif


let package = Package(
  name: "JWT",
  products: [
    .library(name: "JWT", targets: ["JWT"]),
  ],
  targets: [
    .target(name: "JWA", exclude: excludes),
    .target(name: "JWT", dependencies: ["JWA"]),
    .testTarget(name: "JWATests", dependencies: ["JWA"]),
    .testTarget(name: "JWTTests", dependencies: ["JWT"]),
  ]
)
