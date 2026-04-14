//
//  ValueSet.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ValueSet)
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
 A set of codes drawn from one or more code systems.
 
 A value set specifies a set of codes drawn from one or more code systems.
 */
public struct ValueSet: DomainResource {
	
	public static let resourceType: ResourceType = .valueSet
	
	/// An inline code system, which is part of this value set
	public var codeSystem: ValueSetCodeSystem?
	
	/// When value set includes codes from elsewhere
	public var compose: ValueSetCompose?
	
	/// Contact details of the publisher
	public var contact: [ValueSetContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for given status
	public var date: FHIRPrimitive<DateTime>?
	
	/// Human language description of the value set
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Whether this is intended to be used with an extensible binding
	public var extensible: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the value set (e.g. HL7 v2 / CDA)
	public var identifier: Identifier?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: FHIRPrimitive<FHIRBool>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Fixed date for all referenced code systems and value sets
	public var lockedDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this value set
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why needed
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// The status of the value set.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Globally unique logical identifier for  value set
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical identifier for this version of the value set
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<ConformanceResourceStatus>) {
		self.status = status
	}
	
	/// Convenience initializer
	public init(
		codeSystem: ValueSetCodeSystem? = nil,
		compose: ValueSetCompose? = nil,
		contact: [ValueSetContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expansion: ValueSetExpansion? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		extensible: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		immutable: FHIRPrimitive<FHIRBool>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lockedDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [CodeableConcept]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(status: status)
		self.codeSystem = codeSystem
		self.compose = compose
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.expansion = expansion
		self.experimental = experimental
		self.extensible = extensible
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.immutable = immutable
		self.implicitRules = implicitRules
		self.language = language
		self.lockedDate = lockedDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.requirements = requirements
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case codeSystem
		case compose
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case expansion
		case experimental; case _experimental
		case extensible; case _extensible
		case `extension` = "extension"
		case id; case _id
		case identifier
		case immutable; case _immutable
		case implicitRules; case _implicitRules
		case language; case _language
		case lockedDate; case _lockedDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case requirements; case _requirements
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
		self.codeSystem = try ValueSetCodeSystem(from: _container, forKeyIfPresent: .codeSystem)
		self.compose = try ValueSetCompose(from: _container, forKeyIfPresent: .compose)
		self.contact = try [ValueSetContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expansion = try ValueSetExpansion(from: _container, forKeyIfPresent: .expansion)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.extensible = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .extensible, auxiliaryKey: ._extensible)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.immutable = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .immutable, auxiliaryKey: ._immutable)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lockedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lockedDate, auxiliaryKey: ._lockedDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try codeSystem?.encode(on: &_container, forKey: .codeSystem)
		try compose?.encode(on: &_container, forKey: .compose)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expansion?.encode(on: &_container, forKey: .expansion)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try extensible?.encode(on: &_container, forKey: .extensible, auxiliaryKey: ._extensible)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try immutable?.encode(on: &_container, forKey: .immutable, auxiliaryKey: ._immutable)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lockedDate?.encode(on: &_container, forKey: .lockedDate, auxiliaryKey: ._lockedDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 An inline code system, which is part of this value set.
 
 A definition of a code system, inlined into the value set (as a packaging convenience). Note that the inline code
 system may be used from other value sets by referring to its (codeSystem.system) directly.
 */
public typealias ValueSetCodeSystem = BackboneElement

/**
 Concepts in the code system.
 
 Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be
 consulted to determine what the meaning of the hierarchical relationships are.
 */
public typealias ValueSetCodeSystemConcept = BackboneElement

/**
 Additional representations for the concept.
 
 Additional representations for the concept - other languages, aliases, specialized purposes, used for particular
 purposes, etc.
 */
public typealias ValueSetCodeSystemConceptDesignation = BackboneElement

/**
 When value set includes codes from elsewhere.
 
 A set of criteria that provide the content logical definition of the value set by including or excluding codes from
 outside this value set.
 */
public typealias ValueSetCompose = BackboneElement

/**
 Include one or more codes from a code system.
 */
public typealias ValueSetComposeInclude = BackboneElement

/**
 A concept defined in the system.
 
 Specifies a concept to be included or excluded.
 */
public typealias ValueSetComposeIncludeConcept = BackboneElement

/**
 Select codes/concepts by their properties (including relationships).
 
 Select concepts by specify a matching criteria based on the properties (including relationships) defined by the system.
 If multiple filters are specified, they SHALL all be true.
 */
public typealias ValueSetComposeIncludeFilter = BackboneElement

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public typealias ValueSetContact = BackboneElement

/**
 Used when the value set is "expanded".
 
 A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 element holds the expansion, if it has been performed.
 */
public typealias ValueSetExpansion = BackboneElement

/**
 Codes in the value set.
 
 The codes that are contained in the value set expansion.
 */
public typealias ValueSetExpansionContains = BackboneElement

/**
 Parameter that controlled the expansion process.
 
 A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to
 check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
public typealias ValueSetExpansionParameter = BackboneElement
