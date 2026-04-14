//
//  CarePlan.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/CarePlan)
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
 Healthcare plan for patient or group.
 
 Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 community for a period of time, possibly limited to care for a specific condition or set of conditions.
 */
public struct CarePlan: DomainResource {
	
	public static let resourceType: ResourceType = .carePlan
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses
	public var addresses: [Reference]?
	
	/// Who is responsible for contents of the plan
	public var author: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Created in context of
	public var context: Reference?
	
	/// Summary of nature of plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// When last updated
	public var modified: FHIRPrimitive<DateTime>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments about the plan
	public var note: Annotation?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Time period plan covers
	public var period: Period?
	
	/// Plans related to this one
	public var relatedPlan: [CarePlanRelatedPlan]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	/// Restricted to: ['proposed', 'draft', 'active', 'completed', 'cancelled']
	public var status: FHIRPrimitive<CarePlanStatus>
	
	/// Who care plan is for
	public var subject: Reference?
	
	/// Information considered as part of plan
	public var support: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<CarePlanStatus>) {
		self.status = status
	}
	
	/// Convenience initializer
	public init(
		activity: [CarePlanActivity]? = nil,
		addresses: [Reference]? = nil,
		author: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		goal: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modified: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		participant: [CarePlanParticipant]? = nil,
		period: Period? = nil,
		relatedPlan: [CarePlanRelatedPlan]? = nil,
		status: FHIRPrimitive<CarePlanStatus>,
		subject: Reference? = nil,
		support: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(status: status)
		self.activity = activity
		self.addresses = addresses
		self.author = author
		self.category = category
		self.contained = contained
		self.context = context
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.goal = goal
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modified = modified
		self.modifierExtension = modifierExtension
		self.note = note
		self.participant = participant
		self.period = period
		self.relatedPlan = relatedPlan
		self.subject = subject
		self.support = support
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case activity
		case addresses
		case author
		case category
		case contained
		case context
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case goal
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modified; case _modified
		case modifierExtension
		case note
		case participant
		case period
		case relatedPlan
		case status; case _status
		case subject
		case support
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try [CarePlanActivity](from: _container, forKeyIfPresent: .activity)
		self.addresses = try [Reference](from: _container, forKeyIfPresent: .addresses)
		self.author = try [Reference](from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.goal = try [Reference](from: _container, forKeyIfPresent: .goal)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modified = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .modified, auxiliaryKey: ._modified)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.participant = try [CarePlanParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relatedPlan = try [CarePlanRelatedPlan](from: _container, forKeyIfPresent: .relatedPlan)
		self.status = try FHIRPrimitive<CarePlanStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.support = try [Reference](from: _container, forKeyIfPresent: .support)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try activity?.encode(on: &_container, forKey: .activity)
		try addresses?.encode(on: &_container, forKey: .addresses)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try goal?.encode(on: &_container, forKey: .goal)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modified?.encode(on: &_container, forKey: .modified, auxiliaryKey: ._modified)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try relatedPlan?.encode(on: &_container, forKey: .relatedPlan)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try support?.encode(on: &_container, forKey: .support)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Action to occur as part of plan.
 
 Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
 self-monitoring, education, etc.
 */
public typealias CarePlanActivity = BackboneElement

/**
 In-line definition of activity.
 
 A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
 about specific resources such as procedure etc.
 */
public typealias CarePlanActivityDetail = BackboneElement

/**
 Who's involved in plan?.
 
 Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public typealias CarePlanParticipant = BackboneElement

/**
 Plans related to this one.
 
 Identifies CarePlans with some sort of formal relationship to the current plan.
 */
public typealias CarePlanRelatedPlan = BackboneElement
