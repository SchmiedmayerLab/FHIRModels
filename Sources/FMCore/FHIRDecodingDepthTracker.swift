//
//  FHIRDecodingDepthTracker.swift
//  HealthSoftware
//
//  Copyright 2026 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation
import os

/**
 A type that can and should be used to track decoding depth to prevent stack exhaustion from recursive structures.
 
 Usage:
 
	 let decoder = JSONDecoder()
	 decoder.userInfo[FHIRDecodingDepthTracker.userInfoKey] = FHIRDecodingDepthTracker()
	 let resource = try decoder.decode(MyResource.self, from: data)
 
 Or simply:
 
	 let decoder = JSONDecoder.fhirModelsReadyDecoder()
	 let resource = try decoder.decode(MyResource.self, from: data)
 
 - Note: Use one instance per decode call, do not share across concurrent decodes.
 */
public final class FHIRDecodingDepthTracker: @unchecked Sendable {
	
	public static let userInfoKey = CodingUserInfoKey(rawValue: "com.apple.health.fhirmodels.decodingDepthTracker")!
	
	public let maxDepth: Int
	
	private var depth: OSAllocatedUnfairLock<Int> = .init(initialState: 0)
	
	public init(maxDepth: Int = 64) {
		self.maxDepth = maxDepth
	}
	
	public static func enter(on decoder: Decoder) throws -> FHIRDecodingDepthTracker? {
		let _depthTracker = decoder.userInfo[Self.userInfoKey] as? Self
		try _depthTracker?.enter(codingPath: decoder.codingPath)
		return _depthTracker
	}
	
	public func enter(codingPath: [CodingKey]) throws {
		let exceededDepth: Int? = depth.withLock { currentDepth in
			if currentDepth > maxDepth {
				return currentDepth + 1
			}
			currentDepth += 1
			return nil
		}
		if let exceededDepth {
			throw DecodingError.dataCorrupted(DecodingError.Context(
				codingPath: codingPath,
				debugDescription: "Nesting depth \(exceededDepth) exceeds maximum of \(maxDepth)"
			))
		}
	}
	
	public func exit() {
		depth.withLock { $0 -= 1 }
	}
}

// MARK: -

extension JSONDecoder {
	
	public static func fhirModelsReadyDecoder() -> JSONDecoder {
		let decoder = JSONDecoder()
		decoder.userInfo[FHIRDecodingDepthTracker.userInfoKey] = FHIRDecodingDepthTracker()
		return decoder
	}
}
