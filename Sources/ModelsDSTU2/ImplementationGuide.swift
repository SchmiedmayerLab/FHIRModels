//
//  ImplementationGuide.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ImplementationGuide)
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
 A set of rules about how FHIR is used.
 
 A set of rules or how FHIR is used to solve a particular problem. This resource is used to gather all the parts of an
 implementation guide into a logical whole, and to publish a computable definition of all the parts.
 */
public struct ImplementationGuide: DomainResource {
	
	public static let resourceType: ResourceType = .implementationGuide
	
	/// Image, css, script, etc.
	public var binary: [FHIRPrimitive<FHIRURI>]?
	
	/// Contact details of the publisher
	public var contact: [ImplementationGuideContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for this version of the Implementation Guide
	public var date: FHIRPrimitive<DateTime>?
	
	/// Another Implementation guide this depends on
	public var dependency: [ImplementationGuideDependency]?
	
	/// Natural language description of the Implementation Guide
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version this Implementation Guide targets
	public var fhirVersion: FHIRPrimitive<FHIRString>?
	
	/// Profiles that apply globally
	public var global: [ImplementationGuideGlobal]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this Implementation Guide
	public var name: FHIRPrimitive<FHIRString>
	
	/// Group of resources as used in .page.package
	public var package: [ImplementationGuidePackage]
	
	/// Page/Section in the Guide
	public var page: ImplementationGuidePage
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// The status of the Implementation Guide.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Absolute URL used to reference this Implementation Guide
	public var url: FHIRPrimitive<FHIRURI>
	
	/// The implementation guide is intended to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the Implementation Guide
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, package: [ImplementationGuidePackage], page: ImplementationGuidePage, status: FHIRPrimitive<ConformanceResourceStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.name = name
		self.package = package
		self.page = page
		self.status = status
		self.url = url
	}
	
	/// Convenience initializer
	public init(
		binary: [FHIRPrimitive<FHIRURI>]? = nil,
		contact: [ImplementationGuideContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		dependency: [ImplementationGuideDependency]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>? = nil,
		global: [ImplementationGuideGlobal]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		package: [ImplementationGuidePackage],
		page: ImplementationGuidePage,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [CodeableConcept]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(name: name, package: package, page: page, status: status, url: url)
		self.binary = binary
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.dependency = dependency
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.fhirVersion = fhirVersion
		self.global = global
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.text = text
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case binary; case _binary
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case dependency
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case global
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case package
		case page
		case publisher; case _publisher
		case status; case _status
		case text
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.binary = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .binary, auxiliaryKey: ._binary)
		self.contact = try [ImplementationGuideContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dependency = try [ImplementationGuideDependency](from: _container, forKeyIfPresent: .dependency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.global = try [ImplementationGuideGlobal](from: _container, forKeyIfPresent: .global)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.package = try [ImplementationGuidePackage](from: _container, forKey: .package)
		self.page = try ImplementationGuidePage(from: _container, forKey: .page)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try binary?.encode(on: &_container, forKey: .binary, auxiliaryKey: ._binary)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dependency?.encode(on: &_container, forKey: .dependency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion?.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try global?.encode(on: &_container, forKey: .global)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try package.encode(on: &_container, forKey: .package)
		try page.encode(on: &_container, forKey: .page)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public typealias ImplementationGuideContact = BackboneElement

/**
 Another Implementation guide this depends on.
 
 Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets,
 profiles etc.defined in other implementation guides.
 */
public typealias ImplementationGuideDependency = BackboneElement

/**
 Profiles that apply globally.
 
 A set of profiles that all resources covered by this implementation guide must conform to.
 */
public typealias ImplementationGuideGlobal = BackboneElement

/**
 Group of resources as used in .page.package.
 
 A logical group of resources. Logical groups can be used when building pages.
 */
public typealias ImplementationGuidePackage = BackboneElement

/**
 Resource in the implementation guide.
 
 A resource that is part of the implementation guide. Conformance resources (value set, structure definition,
 conformance statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an
 example resource.
 */
public typealias ImplementationGuidePackageResource = BackboneElement

/**
 Page/Section in the Guide.
 
 A page / section in the implementation guide. The root page is the implementation guide home page.
 */
public typealias ImplementationGuidePage = BackboneElement
