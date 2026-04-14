//
//  TestScript.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/TestScript)
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
 Describes a set of tests.
 
 TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine compliance
 against the FHIR specification.
 */
public struct TestScript: DomainResource {
	
	public static let resourceType: ResourceType = .testScript
	
	/// Contact details of the publisher
	public var contact: [TestScriptContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for this version of the TestScript
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the TestScript
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Fixture in the test script - by reference (uri)
	public var fixture: [TestScriptFixture]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Whether or not the tests apply to more than one FHIR server
	public var multiserver: FHIRPrimitive<FHIRBool>?
	
	/// Informal name for this TestScript
	public var name: FHIRPrimitive<FHIRString>
	
	/// Reference of the validation profile
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Scope and Usage this Test Script is for
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// A series of required setup operations before tests are executed
	public var setup: TestScriptSetup?
	
	/// The status of the TestScript.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// A series of required clean up steps
	public var teardown: TestScriptTeardown?
	
	/// A test in this script
	public var test: [TestScriptTest]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Absolute URL used to reference this TestScript
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Placeholder for evaluated elements
	public var variable: [TestScriptVariable]?
	
	/// Logical id for this version of the TestScript
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<ConformanceResourceStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.name = name
		self.status = status
		self.url = url
	}
	
	/// Convenience initializer
	public init(
		contact: [TestScriptContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fixture: [TestScriptFixture]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil,
		multiserver: FHIRPrimitive<FHIRBool>? = nil,
		name: FHIRPrimitive<FHIRString>,
		profile: [Reference]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		setup: TestScriptSetup? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		teardown: TestScriptTeardown? = nil,
		test: [TestScriptTest]? = nil,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [CodeableConcept]? = nil,
		variable: [TestScriptVariable]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(name: name, status: status, url: url)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.fixture = fixture
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.metadata = metadata
		self.modifierExtension = modifierExtension
		self.multiserver = multiserver
		self.profile = profile
		self.publisher = publisher
		self.requirements = requirements
		self.setup = setup
		self.teardown = teardown
		self.test = test
		self.text = text
		self.useContext = useContext
		self.variable = variable
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case `extension` = "extension"
		case fixture
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case metadata
		case modifierExtension
		case multiserver; case _multiserver
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case setup
		case status; case _status
		case teardown
		case test
		case text
		case url; case _url
		case useContext
		case variable
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [TestScriptContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fixture = try [TestScriptFixture](from: _container, forKeyIfPresent: .fixture)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multiserver = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multiserver, auxiliaryKey: ._multiserver)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.setup = try TestScriptSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestScriptTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestScriptTest](from: _container, forKeyIfPresent: .test)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.variable = try [TestScriptVariable](from: _container, forKeyIfPresent: .variable)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fixture?.encode(on: &_container, forKey: .fixture)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multiserver?.encode(on: &_container, forKey: .multiserver, auxiliaryKey: ._multiserver)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try text?.encode(on: &_container, forKey: .text)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variable?.encode(on: &_container, forKey: .variable)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public typealias TestScriptContact = BackboneElement

/**
 Fixture in the test script - by reference (uri).
 
 Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
 */
public typealias TestScriptFixture = BackboneElement

/**
 Required capability that is assumed to function correctly on the FHIR server being tested.
 
 The required capability must exist and are assumed to function correctly on the FHIR server being tested.
 */
public typealias TestScriptMetadata = BackboneElement

/**
 Capabilities  that are assumed to function correctly on the FHIR server being tested.
 
 Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
public typealias TestScriptMetadataCapability = BackboneElement

/**
 Links to the FHIR specification.
 
 A link to the FHIR specification that this test is covering.
 */
public typealias TestScriptMetadataLink = BackboneElement

/**
 A series of required setup operations before tests are executed.
 */
public typealias TestScriptSetup = BackboneElement

/**
 A setup operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
public typealias TestScriptSetupAction = BackboneElement

/**
 The assertion to perform.
 
 Evaluates the results of previous operations to determine if the server under test behaves appropriately.
 */
public typealias TestScriptSetupActionAssert = BackboneElement

/**
 The setup operation to perform.
 
 The operation to perform.
 */
public typealias TestScriptSetupActionOperation = BackboneElement

/**
 Each operation can have one ore more header elements.
 
 Header elements would be used to set HTTP headers.
 */
public typealias TestScriptSetupActionOperationRequestHeader = BackboneElement

/**
 A series of required clean up steps.
 
 A series of operations required to clean up after the all the tests are executed (successfully or otherwise).
 */
public typealias TestScriptTeardown = BackboneElement

/**
 One or more teardown operations to perform.
 
 The teardown action will only contain an operation.
 */
public typealias TestScriptTeardownAction = BackboneElement

/**
 A test in this script.
 */
public typealias TestScriptTest = BackboneElement

/**
 A test operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
public typealias TestScriptTestAction = BackboneElement

/**
 Placeholder for evaluated elements.
 
 Variable is set based either on element value in response body or on header field value in the response headers.
 */
public typealias TestScriptVariable = BackboneElement
