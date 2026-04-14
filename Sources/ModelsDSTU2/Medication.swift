//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Medication)
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
 Definition of a Medication.
 
 This resource is primarily used for the identification and definition of a medication. It covers the ingredients and
 the packaging for a medication.
 */
public struct Medication: DomainResource {
	
	public static let resourceType: ResourceType = .medication
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// True if a brand
	public var isBrand: FHIRPrimitive<FHIRBool>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Details about packaged medications
	public var package: MedicationPackage?
	
	/// Administrable medication details
	public var product: MedicationProduct?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init() {
	}
	
	/// Convenience initializer
	public init(
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		isBrand: FHIRPrimitive<FHIRBool>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		package: MedicationPackage? = nil,
		product: MedicationProduct? = nil,
		text: Narrative? = nil
	) {
		self.init()
		self.code = code
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.isBrand = isBrand
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.package = package
		self.product = product
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case code
		case contained
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case isBrand; case _isBrand
		case language; case _language
		case manufacturer
		case meta
		case modifierExtension
		case package
		case product
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.isBrand = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isBrand, auxiliaryKey: ._isBrand)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.package = try MedicationPackage(from: _container, forKeyIfPresent: .package)
		self.product = try MedicationProduct(from: _container, forKeyIfPresent: .product)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try isBrand?.encode(on: &_container, forKey: .isBrand, auxiliaryKey: ._isBrand)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try package?.encode(on: &_container, forKey: .package)
		try product?.encode(on: &_container, forKey: .product)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
public typealias MedicationPackage = BackboneElement

/**
 What is  in the package.
 
 A set of components that go to make up the described item.
 */
public typealias MedicationPackageContent = BackboneElement

/**
 Administrable medication details.
 
 Information that only applies to products (not packages).
 */
public typealias MedicationProduct = BackboneElement

/**
 Information about a group of medication produced or packaged from one production run.
 */
public typealias MedicationProductBatch = BackboneElement

/**
 Active or inactive ingredient.
 
 Identifies a particular constituent of interest in the product.
 */
public typealias MedicationProductIngredient = BackboneElement
