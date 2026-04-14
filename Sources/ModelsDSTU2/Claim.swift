//
//  Claim.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Claim)
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
 Claim, Pre-determination or Pre-authorization.
 
 A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 insurer for payment recovery.
 */
public struct Claim: DomainResource {
	
	public static let resourceType: ResourceType = .claim
	
	/// Accident Date
	public var accident: FHIRPrimitive<FHIRDate>?
	
	/// Accident Type
	public var accidentType: Coding?
	
	/// Additional materials, documents, etc.
	public var additionalMaterials: [Coding]?
	
	/// List of presenting Conditions
	public var condition: [Coding]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimCoverage]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Author
	public var enterer: Reference?
	
	/// Eligibility exceptions
	public var exception: [Coding]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Funds requested to be reserved
	public var fundsReserve: Coding?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intervention and exception code (Pharma)
	public var interventionException: [Coding]?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Only if type = oral
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original Prescription
	public var originalPrescription: Reference?
	
	/// Original specification followed
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services
	public var patient: Reference
	
	/// Payee
	public var payee: ClaimPayee?
	
	/// Prescription
	public var prescription: Reference?
	
	/// Desired processing priority
	public var priority: Coding?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Current specification followed
	public var ruleset: Coding?
	
	/// Name of School
	public var school: FHIRPrimitive<FHIRString>?
	
	/// Insurer
	public var target: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The category of claim this is.
	/// Restricted to: ['institutional', 'oral', 'pharmacy', 'professional', 'vision']
	public var type: FHIRPrimitive<ClaimType>
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	/// Restricted to: ['complete', 'proposed', 'exploratory', 'other']
	public var use: FHIRPrimitive<Use>?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, type: FHIRPrimitive<ClaimType>) {
		self.patient = patient
		self.type = type
	}
	
	/// Convenience initializer
	public init(
		accident: FHIRPrimitive<FHIRDate>? = nil,
		accidentType: Coding? = nil,
		additionalMaterials: [Coding]? = nil,
		condition: [Coding]? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [ClaimCoverage]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		diagnosis: [ClaimDiagnosis]? = nil,
		enterer: Reference? = nil,
		exception: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		fundsReserve: Coding? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		interventionException: [Coding]? = nil,
		item: [ClaimItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		missingTeeth: [ClaimMissingTeeth]? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference? = nil,
		originalPrescription: Reference? = nil,
		originalRuleset: Coding? = nil,
		patient: Reference,
		payee: ClaimPayee? = nil,
		prescription: Reference? = nil,
		priority: Coding? = nil,
		provider: Reference? = nil,
		referral: Reference? = nil,
		ruleset: Coding? = nil,
		school: FHIRPrimitive<FHIRString>? = nil,
		target: Reference? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<ClaimType>,
		use: FHIRPrimitive<Use>? = nil
	) {
		self.init(patient: patient, type: type)
		self.accident = accident
		self.accidentType = accidentType
		self.additionalMaterials = additionalMaterials
		self.condition = condition
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.diagnosis = diagnosis
		self.enterer = enterer
		self.exception = exception
		self.`extension` = `extension`
		self.facility = facility
		self.fundsReserve = fundsReserve
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.interventionException = interventionException
		self.item = item
		self.language = language
		self.meta = meta
		self.missingTeeth = missingTeeth
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.originalPrescription = originalPrescription
		self.originalRuleset = originalRuleset
		self.payee = payee
		self.prescription = prescription
		self.priority = priority
		self.provider = provider
		self.referral = referral
		self.ruleset = ruleset
		self.school = school
		self.target = target
		self.text = text
		self.use = use
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accident; case _accident
		case accidentType
		case additionalMaterials
		case condition
		case contained
		case coverage
		case created; case _created
		case diagnosis
		case enterer
		case exception
		case `extension` = "extension"
		case facility
		case fundsReserve
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case interventionException
		case item
		case language; case _language
		case meta
		case missingTeeth
		case modifierExtension
		case organization
		case originalPrescription
		case originalRuleset
		case patient
		case payee
		case prescription
		case priority
		case provider
		case referral
		case ruleset
		case school; case _school
		case target
		case text
		case type; case _type
		case use; case _use
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accident = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .accident, auxiliaryKey: ._accident)
		self.accidentType = try Coding(from: _container, forKeyIfPresent: .accidentType)
		self.additionalMaterials = try [Coding](from: _container, forKeyIfPresent: .additionalMaterials)
		self.condition = try [Coding](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [ClaimCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.diagnosis = try [ClaimDiagnosis](from: _container, forKeyIfPresent: .diagnosis)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.exception = try [Coding](from: _container, forKeyIfPresent: .exception)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.fundsReserve = try Coding(from: _container, forKeyIfPresent: .fundsReserve)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.interventionException = try [Coding](from: _container, forKeyIfPresent: .interventionException)
		self.item = try [ClaimItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.missingTeeth = try [ClaimMissingTeeth](from: _container, forKeyIfPresent: .missingTeeth)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalPrescription = try Reference(from: _container, forKeyIfPresent: .originalPrescription)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.payee = try ClaimPayee(from: _container, forKeyIfPresent: .payee)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.priority = try Coding(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.referral = try Reference(from: _container, forKeyIfPresent: .referral)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.school = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .school, auxiliaryKey: ._school)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<ClaimType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.use = try FHIRPrimitive<Use>(from: _container, forKeyIfPresent: .use, auxiliaryKey: ._use)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try accident?.encode(on: &_container, forKey: .accident, auxiliaryKey: ._accident)
		try accidentType?.encode(on: &_container, forKey: .accidentType)
		try additionalMaterials?.encode(on: &_container, forKey: .additionalMaterials)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try diagnosis?.encode(on: &_container, forKey: .diagnosis)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try exception?.encode(on: &_container, forKey: .exception)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try fundsReserve?.encode(on: &_container, forKey: .fundsReserve)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try interventionException?.encode(on: &_container, forKey: .interventionException)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try missingTeeth?.encode(on: &_container, forKey: .missingTeeth)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalPrescription?.encode(on: &_container, forKey: .originalPrescription)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try patient.encode(on: &_container, forKey: .patient)
		try payee?.encode(on: &_container, forKey: .payee)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try priority?.encode(on: &_container, forKey: .priority)
		try provider?.encode(on: &_container, forKey: .provider)
		try referral?.encode(on: &_container, forKey: .referral)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try school?.encode(on: &_container, forKey: .school, auxiliaryKey: ._school)
		try target?.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try use?.encode(on: &_container, forKey: .use, auxiliaryKey: ._use)
	}
}

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public typealias ClaimCoverage = BackboneElement

/**
 Diagnosis.
 
 Ordered list of patient diagnosis for which care is sought.
 */
public typealias ClaimDiagnosis = BackboneElement

/**
 Goods and Services.
 
 First tier of goods and services.
 */
public typealias ClaimItem = BackboneElement

/**
 Additional items.
 
 Second tier of goods and services.
 */
public typealias ClaimItemDetail = BackboneElement

/**
 Additional items.
 
 Third tier of goods and services.
 */
public typealias ClaimItemDetailSubDetail = BackboneElement

/**
 Prosthetic details.
 
 The materials and placement date of prior fixed prosthesis.
 */
public typealias ClaimItemProsthesis = BackboneElement

/**
 Only if type = oral.
 
 A list of teeth which would be expected but are not found due to having been previously  extracted or for other
 reasons.
 */
public typealias ClaimMissingTeeth = BackboneElement

/**
 Payee.
 
 The party to be reimbursed for the services.
 */
public typealias ClaimPayee = BackboneElement
