//
//  FHIRDecodingDepthTrackerTests.swift
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

import FMCore
import Foundation
import ModelsR5
import Testing

struct FHIRDecodingDepthTrackerTests {
	
	@Test(arguments: [
		(  1, true),
		( 25, true),
		( 49, true),
		( 50, false),
		( 64, false),
	])
	func respectsDecodingDepth(levels: Int, shouldThrow: Bool) throws {
		let counter = FHIRDecodingDepthTracker(maxDepth: levels)
		let decoder = JSONDecoder()
		decoder.userInfo[FHIRDecodingDepthTracker.userInfoKey] = counter
		
		let data = try #require(nestedExtensionJSON(depth: 50).data(using: .utf8))
		do {
			_ = try decoder.decode(Patient.self, from: data)
			#expect(!shouldThrow, "Should have thrown for a maximum of \(levels) but didn't")
		} catch let error as DecodingError {
			#expect(shouldThrow, "Threw «\(error)» but should not have thrown for a maximum of \(levels)")
		}
	}
	
	@Test
	func verifyProductionDecoderSetup() throws {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		let counter = try #require(decoder.userInfo[FHIRDecodingDepthTracker.userInfoKey] as? FHIRDecodingDepthTracker)
		#expect(counter.maxDepth == 64)
	}
	
	// MARK: - Utilities
	
	/**
	 Builds a Patient JSON string with `depth` levels of nested `Extension`.
	 
	     {
	        "resourceType": "Patient",
	        "extension": [{
	             "url": "1",
	             "extension": [{
	                 "url": "2",
	                 "extension": [ ... ]
	             }]
	         }]
	     }
	 */
	private func nestedExtensionJSON(depth: Int) -> String {
		var content = #"{"url":"\#(depth - 1)","valueString":"At depth \#(depth - 1)"}"#
		for level in stride(from: depth - 2, through: 0, by: -1) {
			content = #"{"url":"\#(level)","extension":[\#(content)]}"#
		}
		return #"{"resourceType":"Patient","extension":[\#(content)]}"#
	}
}
