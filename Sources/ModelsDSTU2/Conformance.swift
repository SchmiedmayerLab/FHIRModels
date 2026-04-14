//
//  Conformance.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Conformance)
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
 A conformance statement.
 
 A conformance statement is a set of capabilities of a FHIR Server that may be used as a statement of actual server
 functionality or a statement of required or desired server implementation.
 */
public struct Conformance: DomainResource {
	
	public static let resourceType: ResourceType = .conformance
	
	/// A code that indicates whether the application accepts unknown elements or extensions when reading resources.
	/// Restricted to: ['no', 'extensions', 'elements', 'both']
	public var acceptUnknown: FHIRPrimitive<UnknownContentCode>
	
	/// Contact details of the publisher
	public var contact: [ConformanceContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Publication Date(/time)
	public var date: FHIRPrimitive<DateTime>
	
	/// Human description of the conformance statement
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Document definition
	public var document: [ConformanceDocument]?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIR Version the system uses
	public var fhirVersion: FHIRPrimitive<FHIRString>
	
	/// formats supported (xml | json | mime type)
	public var format: [FHIRPrimitive<FHIRString>]
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If this describes a specific instance
	public var implementation: ConformanceImplementation?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The way that this statement is intended to be used, to describe an actual running instance of software, a
	/// particular product (kind not instance of software) or a class of implementation (e.g. a desired purchase).
	/// Restricted to: ['instance', 'capability', 'requirements']
	public var kind: FHIRPrimitive<ConformanceStatementKind>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// If messaging is supported
	public var messaging: [ConformanceMessaging]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name for this conformance statement
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Profiles for use cases supported
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why is this needed?
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// If the endpoint is a RESTful one
	public var rest: [ConformanceRest]?
	
	/// Software that is covered by this conformance statement
	public var software: ConformanceSoftware?
	
	/// The status of this conformance statement.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical uri to reference this statement
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id for this version of the statement
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(acceptUnknown: FHIRPrimitive<UnknownContentCode>, date: FHIRPrimitive<DateTime>, fhirVersion: FHIRPrimitive<FHIRString>, format: [FHIRPrimitive<FHIRString>], kind: FHIRPrimitive<ConformanceStatementKind>) {
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
	}
	
	/// Convenience initializer
	public init(
		acceptUnknown: FHIRPrimitive<UnknownContentCode>,
		contact: [ConformanceContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		document: [ConformanceDocument]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fhirVersion: FHIRPrimitive<FHIRString>,
		format: [FHIRPrimitive<FHIRString>],
		id: FHIRPrimitive<FHIRString>? = nil,
		implementation: ConformanceImplementation? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		kind: FHIRPrimitive<ConformanceStatementKind>,
		language: FHIRPrimitive<FHIRString>? = nil,
		messaging: [ConformanceMessaging]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		profile: [Reference]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		rest: [ConformanceRest]? = nil,
		software: ConformanceSoftware? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>? = nil,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(acceptUnknown: acceptUnknown, date: date, fhirVersion: fhirVersion, format: format, kind: kind)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.document = document
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implementation = implementation
		self.implicitRules = implicitRules
		self.language = language
		self.messaging = messaging
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.profile = profile
		self.publisher = publisher
		self.requirements = requirements
		self.rest = rest
		self.software = software
		self.status = status
		self.text = text
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case acceptUnknown; case _acceptUnknown
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case document
		case experimental; case _experimental
		case `extension` = "extension"
		case fhirVersion; case _fhirVersion
		case format; case _format
		case id; case _id
		case implementation
		case implicitRules; case _implicitRules
		case kind; case _kind
		case language; case _language
		case messaging
		case meta
		case modifierExtension
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case rest
		case software
		case status; case _status
		case text
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.acceptUnknown = try FHIRPrimitive<UnknownContentCode>(from: _container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		self.contact = try [ConformanceContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.document = try [ConformanceDocument](from: _container, forKeyIfPresent: .document)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirVersion = try FHIRPrimitive<FHIRString>(from: _container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		self.format = try [FHIRPrimitive<FHIRString>](from: _container, forKey: .format, auxiliaryKey: ._format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implementation = try ConformanceImplementation(from: _container, forKeyIfPresent: .implementation)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.kind = try FHIRPrimitive<ConformanceStatementKind>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.messaging = try [ConformanceMessaging](from: _container, forKeyIfPresent: .messaging)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.rest = try [ConformanceRest](from: _container, forKeyIfPresent: .rest)
		self.software = try ConformanceSoftware(from: _container, forKeyIfPresent: .software)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try acceptUnknown.encode(on: &_container, forKey: .acceptUnknown, auxiliaryKey: ._acceptUnknown)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try document?.encode(on: &_container, forKey: .document)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirVersion.encode(on: &_container, forKey: .fhirVersion, auxiliaryKey: ._fhirVersion)
		try format.encode(on: &_container, forKey: .format, auxiliaryKey: ._format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implementation?.encode(on: &_container, forKey: .implementation)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try messaging?.encode(on: &_container, forKey: .messaging)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try rest?.encode(on: &_container, forKey: .rest)
		try software?.encode(on: &_container, forKey: .software)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public typealias ConformanceContact = BackboneElement

/**
 Document definition.
 
 A document definition.
 */
public typealias ConformanceDocument = BackboneElement

/**
 If this describes a specific instance.
 
 Identifies a specific implementation instance that is described by the conformance statement - i.e. a particular
 installation, rather than the capabilities of a software program.
 */
public typealias ConformanceImplementation = BackboneElement

/**
 If messaging is supported.
 
 A description of the messaging capabilities of the solution.
 */
public typealias ConformanceMessaging = BackboneElement

/**
 A messaging service end-point.
 
 An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
public typealias ConformanceMessagingEndpoint = BackboneElement

/**
 Declare support for this event.
 
 A description of the solution's support for an event at this end-point.
 */
public typealias ConformanceMessagingEvent = BackboneElement

/**
 If the endpoint is a RESTful one.
 
 A definition of the restful capabilities of the solution, if any.
 */
public typealias ConformanceRest = BackboneElement

/**
 What operations are supported?.
 
 A specification of restful operations supported by the system.
 */
public typealias ConformanceRestInteraction = BackboneElement

/**
 Definition of an operation or a custom query.
 
 Definition of an operation or a named query and with its parameters and their meaning and type.
 */
public typealias ConformanceRestOperation = BackboneElement

/**
 Resource served on the REST interface.
 
 A specification of the restful capabilities of the solution for a specific resource type.
 */
public typealias ConformanceRestResource = BackboneElement

/**
 What operations are supported?.
 
 Identifies a restful operation supported by the solution.
 */
public typealias ConformanceRestResourceInteraction = BackboneElement

/**
 Search params supported by implementation.
 
 Search parameters for implementations to support and/or make use of - either references to ones defined in the
 specification, or additional ones defined for/by the implementation.
 */
public typealias ConformanceRestResourceSearchParam = BackboneElement

/**
 Information about security of implementation.
 
 Information about security implementation from an interface perspective - what a client needs to know.
 */
public typealias ConformanceRestSecurity = BackboneElement

/**
 Certificates associated with security profiles.
 */
public typealias ConformanceRestSecurityCertificate = BackboneElement

/**
 Software that is covered by this conformance statement.
 
 Software that is covered by this conformance statement.  It is used when the conformance statement describes the
 capabilities of a particular software version, independent of an installation.
 */
public typealias ConformanceSoftware = BackboneElement
