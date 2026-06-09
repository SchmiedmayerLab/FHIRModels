//
//  Base64BinaryTests.swift
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
import ModelsR5
import Testing

struct Base64BinaryTests {
	
	@Test
	func properlyRoundTrips() throws {
		// A 1x1 black PNG image in raw!
		let original = Data([
			0x00, 0x00, 0x00, 0x0D,    // 13, the header's length
			0x49, 0x48, 0x44, 0x52,    // "IHDR"
			0x00, 0x00, 0x00, 0x01,    // width: 1
			0x00, 0x00, 0x00, 0x01,    // height: 1
			0x01, 0x00,                // bit depth, color type
			0x00, 0x00, 0x00,          // compression method, filter method, interlace method
			0x37, 0x6E, 0xF9, 0x24,    // checksum
			
			0x00, 0x00, 0x00, 0x0A,    // length: 10 bytes
			0x49, 0x44, 0x41, 0x54,    // "IDAT"
			0x78, 0x01,                // ZLIB header
			0x63, 0x60, 0x00, 0x00,    // DEF block
			0x00, 0x02, 0x00, 0x01,    // ZLIB checksum
			0x73, 0x75, 0x01, 0x18,    // chunk checksum
			
			0x00, 0x00, 0x00, 0x00,    // length: 0
			0x49, 0x45, 0x4E, 0x44,    // "IEND"
			0xAE, 0x42, 0x60, 0x82,    // checksum
		])
		
		let base64 = Base64Binary(with: original)
		let decoded = try #require(base64.data())
		#expect(decoded == original)
	}
	
	@Test
	func handlesInvalidBase64Source() throws {
		let string = "Hello World"
        let base64 = Base64Binary(string)
        let decoded = base64.data()
        #expect(decoded == nil)
	}
}
