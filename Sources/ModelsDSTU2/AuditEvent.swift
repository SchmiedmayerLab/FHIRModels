//
//  AuditEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AuditEvent)
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
 Event record kept for security purposes.
 
 A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 attempts and monitoring for inappropriate usage.
 */
public struct AuditEvent: DomainResource {
	
	public static let resourceType: ResourceType = .auditEvent
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// What was done
	public var event: AuditEventEvent
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
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
	
	/// Specific instances of data or objects that have been accessed
	public var object: [AuditEventObject]?
	
	/// A person, a hardware device or software process
	public var participant: [AuditEventParticipant]
	
	/// Application systems and processes
	public var source: AuditEventSource
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init(event: AuditEventEvent, participant: [AuditEventParticipant], source: AuditEventSource) {
		self.event = event
		self.participant = participant
		self.source = source
	}
	
	/// Convenience initializer
	public init(
		contained: [ResourceProxy]? = nil,
		event: AuditEventEvent,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		object: [AuditEventObject]? = nil,
		participant: [AuditEventParticipant],
		source: AuditEventSource,
		text: Narrative? = nil
	) {
		self.init(event: event, participant: participant, source: source)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.object = object
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case event
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case object
		case participant
		case source
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.event = try AuditEventEvent(from: _container, forKey: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.object = try [AuditEventObject](from: _container, forKeyIfPresent: .object)
		self.participant = try [AuditEventParticipant](from: _container, forKey: .participant)
		self.source = try AuditEventSource(from: _container, forKey: .source)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try event.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try object?.encode(on: &_container, forKey: .object)
		try participant.encode(on: &_container, forKey: .participant)
		try source.encode(on: &_container, forKey: .source)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 What was done.
 
 Identifies the name, action type, time, and disposition of the audited event.
 */
public typealias AuditEventEvent = BackboneElement

/**
 Specific instances of data or objects that have been accessed.
 */
public typealias AuditEventObject = BackboneElement

/**
 Additional Information about the Object.
 */
public typealias AuditEventObjectDetail = BackboneElement

/**
 A person, a hardware device or software process.
 */
public typealias AuditEventParticipant = BackboneElement

/**
 Logical network location for application activity.
 
 Logical network location for application activity, if the activity has a network location.
 */
public typealias AuditEventParticipantNetwork = BackboneElement

/**
 Application systems and processes.
 */
public typealias AuditEventSource = BackboneElement
