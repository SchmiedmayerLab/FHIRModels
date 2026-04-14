//
//  Bundle.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Bundle)
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

/**
 Contains a collection of resources.
 
 A container for a collection of resources.
 */
public struct Bundle: Resource {
	
	public static let resourceType: ResourceType = .bundle
	
	/// Entry in the bundle - will have a resource, or information
	public var entry: [BundleEntry]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Links related to this Bundle
	public var link: [BundleLink]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Digital Signature
	public var signature: Signature?
	
	/// If search, the total number of matches
	public var total: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Indicates the purpose of this bundle- how it was intended to be used.
	/// Restricted to: ['document', 'message', 'transaction', 'transaction-response', 'batch', 'batch-response',
	/// 'history', 'searchset', 'collection']
	public var type: FHIRPrimitive<BundleType>
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<BundleType>) {
		self.type = type
	}
	
	/// Convenience initializer
	public init(
		entry: [BundleEntry]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		link: [BundleLink]? = nil,
		meta: Meta? = nil,
		signature: Signature? = nil,
		total: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		type: FHIRPrimitive<BundleType>
	) {
		self.init(type: type)
		self.entry = entry
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.link = link
		self.meta = meta
		self.signature = signature
		self.total = total
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case entry
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case link
		case meta
		case signature
		case total; case _total
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.entry = try [BundleEntry](from: _container, forKeyIfPresent: .entry)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [BundleLink](from: _container, forKeyIfPresent: .link)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.signature = try Signature(from: _container, forKeyIfPresent: .signature)
		self.total = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
		self.type = try FHIRPrimitive<BundleType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try entry?.encode(on: &_container, forKey: .entry)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try link?.encode(on: &_container, forKey: .link)
		try meta?.encode(on: &_container, forKey: .meta)
		try signature?.encode(on: &_container, forKey: .signature)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Entry in the bundle - will have a resource, or information.
 
 An entry in a bundle resource - will either contain a resource, or information about a resource (transactions and
 history only).
 */
public typealias BundleEntry = BackboneElement

/**
 Transaction Related Information.
 
 Additional information about how this entry should be processed as part of a transaction.
 */
public typealias BundleEntryRequest = BackboneElement

/**
 Transaction Related Information.
 
 Additional information about how this entry should be processed as part of a transaction.
 */
public typealias BundleEntryResponse = BackboneElement

/**
 Search related information.
 
 Information about the search process that lead to the creation of this entry.
 */
public typealias BundleEntrySearch = BackboneElement

/**
 Links related to this Bundle.
 
 A series of links that provide context to this bundle.
 */
public typealias BundleLink = BackboneElement
