/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_embed_optimize_for.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which imports a proto file that uses optimize_for = CODE_SIZE.

import Foundation
import SwiftProtobuf


public struct ProtobufUnittest_TestEmbedOptimizedForSize: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestEmbedOptimizedForSize"}
  public var protoMessageName: String {return "TestEmbedOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "optionalMessage": 1,
    "repeatedMessage": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "optional_message": 1,
    "repeated_message": 2,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestEmbedOptimizedForSize
    var unknown = ProtobufUnknownStorage()
    var _optionalMessage: ProtobufUnittest_TestOptimizedForSize? = nil
    var _repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] = []

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeOptionalMessageField(fieldType: ProtobufUnittest_TestOptimizedForSize.self, value: &_optionalMessage)
      case 2: handled = try setter.decodeRepeatedMessageField(fieldType: ProtobufUnittest_TestOptimizedForSize.self, value: &_repeatedMessage)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _optionalMessage {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "optional_message", jsonFieldName: "optionalMessage", swiftFieldName: "optionalMessage")
      }
      if !_repeatedMessage.isEmpty {
        try visitor.visitRepeatedMessageField(value: _repeatedMessage, protoFieldNumber: 2, protoFieldName: "repeated_message", jsonFieldName: "repeatedMessage", swiftFieldName: "repeatedMessage")
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if ((_optionalMessage != nil || other._optionalMessage != nil) && (_optionalMessage == nil || other._optionalMessage == nil || _optionalMessage! != other._optionalMessage!)) {return false}
      if _repeatedMessage != other._repeatedMessage {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._optionalMessage = _optionalMessage
      clone._repeatedMessage = _repeatedMessage
      return clone
    }
  }

  private var _storage = _StorageClass()

  ///   Test that embedding a message which has optimize_for = CODE_SIZE into
  ///   one optimized for speed works.
  public var optionalMessage: ProtobufUnittest_TestOptimizedForSize? {
    get {return _storage._optionalMessage}
    set {_uniqueStorage()._optionalMessage = newValue}
  }

  public var repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] {
    get {return _storage._repeatedMessage}
    set {_uniqueStorage()._repeatedMessage = newValue}
  }

  public init() {}

  public init(optionalMessage: ProtobufUnittest_TestOptimizedForSize? = nil,
    repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] = [])
  {
    let storage = _uniqueStorage()
    storage._optionalMessage = optionalMessage
    if !repeatedMessage.isEmpty {
      storage._repeatedMessage = repeatedMessage
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestEmbedOptimizedForSize) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}
