//
//  Encounter.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Encounter)
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
 An interaction during which services are provided to the patient.
 
 An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 assessing the health status of a patient.
 */
public struct Encounter: DomainResource {
	
	public static let resourceType: ResourceType = .encounter
	
	/// The appointment that scheduled this encounter
	public var appointment: Reference?
	
	/// 
	/// Restricted to: ['inpatient', 'outpatient', 'ambulatory', 'emergency', 'home', 'field', 'daytime', 'virtual',
	/// 'other']
	public var `class`: FHIRPrimitive<EncounterClass>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Episode(s) of care that this encounter should be recorded against
	public var episodeOfCare: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Details about the admission to a healthcare service
	public var hospitalization: EncounterHospitalization?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The ReferralRequest that initiated this encounter
	public var incomingReferral: [Reference]?
	
	/// Reason the encounter takes place (resource)
	public var indication: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Quantity of time the encounter lasted (less time absent)
	public var length: Quantity?
	
	/// List of locations where the patient has been
	public var location: [EncounterLocation]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Another Encounter this encounter is part of
	public var partOf: Reference?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The patient present at the encounter
	public var patient: Reference?
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Reason the encounter takes place (code)
	public var reason: [CodeableConcept]?
	
	/// The custodian organization of this Encounter record
	public var serviceProvider: Reference?
	
	/// 
	/// Restricted to: ['planned', 'arrived', 'in-progress', 'onleave', 'finished', 'cancelled']
	public var status: FHIRPrimitive<EncounterState>
	
	/// List of past encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EncounterState>) {
		self.status = status
	}
	
	/// Convenience initializer
	public init(
		appointment: Reference? = nil,
		`class`: FHIRPrimitive<EncounterClass>? = nil,
		contained: [ResourceProxy]? = nil,
		episodeOfCare: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		hospitalization: EncounterHospitalization? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		incomingReferral: [Reference]? = nil,
		indication: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		length: Quantity? = nil,
		location: [EncounterLocation]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		partOf: Reference? = nil,
		participant: [EncounterParticipant]? = nil,
		patient: Reference? = nil,
		period: Period? = nil,
		priority: CodeableConcept? = nil,
		reason: [CodeableConcept]? = nil,
		serviceProvider: Reference? = nil,
		status: FHIRPrimitive<EncounterState>,
		statusHistory: [EncounterStatusHistory]? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(status: status)
		self.appointment = appointment
		self.`class` = `class`
		self.contained = contained
		self.episodeOfCare = episodeOfCare
		self.`extension` = `extension`
		self.hospitalization = hospitalization
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.incomingReferral = incomingReferral
		self.indication = indication
		self.language = language
		self.length = length
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.partOf = partOf
		self.participant = participant
		self.patient = patient
		self.period = period
		self.priority = priority
		self.reason = reason
		self.serviceProvider = serviceProvider
		self.statusHistory = statusHistory
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case appointment
		case `class` = "class"; case _class = "_class"
		case contained
		case episodeOfCare
		case `extension` = "extension"
		case hospitalization
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case incomingReferral
		case indication
		case language; case _language
		case length
		case location
		case meta
		case modifierExtension
		case partOf
		case participant
		case patient
		case period
		case priority
		case reason
		case serviceProvider
		case status; case _status
		case statusHistory
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appointment = try Reference(from: _container, forKeyIfPresent: .appointment)
		self.`class` = try FHIRPrimitive<EncounterClass>(from: _container, forKeyIfPresent: .`class`, auxiliaryKey: ._class)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.episodeOfCare = try [Reference](from: _container, forKeyIfPresent: .episodeOfCare)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.hospitalization = try EncounterHospitalization(from: _container, forKeyIfPresent: .hospitalization)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.incomingReferral = try [Reference](from: _container, forKeyIfPresent: .incomingReferral)
		self.indication = try [Reference](from: _container, forKeyIfPresent: .indication)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.length = try Quantity(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterLocation](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.partOf = try Reference(from: _container, forKeyIfPresent: .partOf)
		self.participant = try [EncounterParticipant](from: _container, forKeyIfPresent: .participant)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.serviceProvider = try Reference(from: _container, forKeyIfPresent: .serviceProvider)
		self.status = try FHIRPrimitive<EncounterState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusHistory = try [EncounterStatusHistory](from: _container, forKeyIfPresent: .statusHistory)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try appointment?.encode(on: &_container, forKey: .appointment)
		try `class`?.encode(on: &_container, forKey: .`class`, auxiliaryKey: ._class)
		try contained?.encode(on: &_container, forKey: .contained)
		try episodeOfCare?.encode(on: &_container, forKey: .episodeOfCare)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try hospitalization?.encode(on: &_container, forKey: .hospitalization)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try incomingReferral?.encode(on: &_container, forKey: .incomingReferral)
		try indication?.encode(on: &_container, forKey: .indication)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try participant?.encode(on: &_container, forKey: .participant)
		try patient?.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try priority?.encode(on: &_container, forKey: .priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try serviceProvider?.encode(on: &_container, forKey: .serviceProvider)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusHistory?.encode(on: &_container, forKey: .statusHistory)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Details about the admission to a healthcare service.
 */
public typealias EncounterHospitalization = BackboneElement

/**
 List of locations where the patient has been.
 
 List of locations where  the patient has been during this encounter.
 */
public typealias EncounterLocation = BackboneElement

/**
 List of participants involved in the encounter.
 
 The list of people responsible for providing the service.
 */
public typealias EncounterParticipant = BackboneElement

/**
 List of past encounter statuses.
 
 The status history permits the encounter resource to contain the status history without needing to read through the
 historical versions of the resource, or even have the server store them.
 */
public typealias EncounterStatusHistory = BackboneElement
