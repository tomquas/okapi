// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: okapi/keys/v1/keys.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Okapi_Keys_V1_KeyType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unspecified // = 0
  case ed25519 // = 1
  case x25519 // = 2
  case p256 // = 3
  case bls12381G1G2 // = 4
  case secp256K1 // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .ed25519
    case 2: self = .x25519
    case 3: self = .p256
    case 4: self = .bls12381G1G2
    case 5: self = .secp256K1
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .ed25519: return 1
    case .x25519: return 2
    case .p256: return 3
    case .bls12381G1G2: return 4
    case .secp256K1: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Okapi_Keys_V1_KeyType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Okapi_Keys_V1_KeyType] = [
    .unspecified,
    .ed25519,
    .x25519,
    .p256,
    .bls12381G1G2,
    .secp256K1,
  ]
}

#endif  // swift(>=4.2)

public struct Okapi_Keys_V1_GenerateKeyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var seed: Data = Data()

  public var keyType: Okapi_Keys_V1_KeyType = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Okapi_Keys_V1_GenerateKeyResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var key: [Okapi_Keys_V1_JsonWebKey] = []

  public var didDocument: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _didDocument ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_didDocument = newValue}
  }
  /// Returns true if `didDocument` has been explicitly set.
  public var hasDidDocument: Bool {return self._didDocument != nil}
  /// Clears the value of `didDocument`. Subsequent reads from it will return its default value.
  public mutating func clearDidDocument() {self._didDocument = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _didDocument: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

public struct Okapi_Keys_V1_ResolveRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var did: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Okapi_Keys_V1_ResolveResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var didDocument: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _didDocument ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_didDocument = newValue}
  }
  /// Returns true if `didDocument` has been explicitly set.
  public var hasDidDocument: Bool {return self._didDocument != nil}
  /// Clears the value of `didDocument`. Subsequent reads from it will return its default value.
  public mutating func clearDidDocument() {self._didDocument = nil}

  public var keys: [Okapi_Keys_V1_JsonWebKey] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _didDocument: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

public struct Okapi_Keys_V1_JsonWebKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var kid: String = String()

  /// public_key
  public var x: String = String()

  /// public_key
  public var y: String = String()

  /// secret_key
  public var d: String = String()

  public var crv: String = String()

  public var kty: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "okapi.keys.v1"

extension Okapi_Keys_V1_KeyType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "KEY_TYPE_UNSPECIFIED"),
    1: .same(proto: "KEY_TYPE_ED25519"),
    2: .same(proto: "KEY_TYPE_X25519"),
    3: .same(proto: "KEY_TYPE_P256"),
    4: .same(proto: "KEY_TYPE_BLS12381G1G2"),
    5: .same(proto: "KEY_TYPE_SECP256K1"),
  ]
}

extension Okapi_Keys_V1_GenerateKeyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenerateKeyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "seed"),
    2: .standard(proto: "key_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.seed) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.keyType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.seed.isEmpty {
      try visitor.visitSingularBytesField(value: self.seed, fieldNumber: 1)
    }
    if self.keyType != .unspecified {
      try visitor.visitSingularEnumField(value: self.keyType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Okapi_Keys_V1_GenerateKeyRequest, rhs: Okapi_Keys_V1_GenerateKeyRequest) -> Bool {
    if lhs.seed != rhs.seed {return false}
    if lhs.keyType != rhs.keyType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Okapi_Keys_V1_GenerateKeyResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenerateKeyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .standard(proto: "did_document"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.key) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._didDocument) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.key.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.key, fieldNumber: 1)
    }
    try { if let v = self._didDocument {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Okapi_Keys_V1_GenerateKeyResponse, rhs: Okapi_Keys_V1_GenerateKeyResponse) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs._didDocument != rhs._didDocument {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Okapi_Keys_V1_ResolveRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResolveRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "did"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.did) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.did.isEmpty {
      try visitor.visitSingularStringField(value: self.did, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Okapi_Keys_V1_ResolveRequest, rhs: Okapi_Keys_V1_ResolveRequest) -> Bool {
    if lhs.did != rhs.did {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Okapi_Keys_V1_ResolveResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResolveResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "did_document"),
    2: .same(proto: "keys"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._didDocument) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.keys) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._didDocument {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.keys.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.keys, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Okapi_Keys_V1_ResolveResponse, rhs: Okapi_Keys_V1_ResolveResponse) -> Bool {
    if lhs._didDocument != rhs._didDocument {return false}
    if lhs.keys != rhs.keys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Okapi_Keys_V1_JsonWebKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".JsonWebKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "kid"),
    2: .same(proto: "x"),
    3: .same(proto: "y"),
    4: .same(proto: "d"),
    5: .same(proto: "crv"),
    6: .same(proto: "kty"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.kid) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.x) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.y) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.d) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.crv) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.kty) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.kid.isEmpty {
      try visitor.visitSingularStringField(value: self.kid, fieldNumber: 1)
    }
    if !self.x.isEmpty {
      try visitor.visitSingularStringField(value: self.x, fieldNumber: 2)
    }
    if !self.y.isEmpty {
      try visitor.visitSingularStringField(value: self.y, fieldNumber: 3)
    }
    if !self.d.isEmpty {
      try visitor.visitSingularStringField(value: self.d, fieldNumber: 4)
    }
    if !self.crv.isEmpty {
      try visitor.visitSingularStringField(value: self.crv, fieldNumber: 5)
    }
    if !self.kty.isEmpty {
      try visitor.visitSingularStringField(value: self.kty, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Okapi_Keys_V1_JsonWebKey, rhs: Okapi_Keys_V1_JsonWebKey) -> Bool {
    if lhs.kid != rhs.kid {return false}
    if lhs.x != rhs.x {return false}
    if lhs.y != rhs.y {return false}
    if lhs.d != rhs.d {return false}
    if lhs.crv != rhs.crv {return false}
    if lhs.kty != rhs.kty {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}