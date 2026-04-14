//
//  ClaimResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ClaimResponse)
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
 Remittance resource.
 
 This resource provides the adjudication details from the processing of a Claim resource.
 */
public struct ClaimResponse: DomainResource {
	
	public static let resourceType: ResourceType = .claimResponse
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Processing notes
	public var note: [ClaimResponseNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Transaction status: error, complete.
	/// Restricted to: ['complete', 'error']
	public var outcome: FHIRPrimitive<RemittanceOutcome>?
	
	/// Party to be paid any benefits payable
	public var payeeType: Coding?
	
	/// Payment adjustment for non-Claim issues
	public var paymentAdjustment: Quantity?
	
	/// Reason for Payment adjustment
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount
	public var paymentAmount: Quantity?
	
	/// Expected data of Payment
	public var paymentDate: FHIRPrimitive<FHIRDate>?
	
	/// Payment identifier
	public var paymentRef: Identifier?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Quantity?
	
	/// Total Cost of service from the Claim
	public var totalCost: Quantity?
	
	/// Unallocated deductible
	public var unallocDeductable: Quantity?
	
	/// Designated initializer taking all required properties
	public init() {
	}
	
	/// Convenience initializer
	public init(
		addItem: [ClaimResponseAddItem]? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: [ClaimResponseCoverage]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		disposition: FHIRPrimitive<FHIRString>? = nil,
		error: [ClaimResponseError]? = nil,
		`extension`: [Extension]? = nil,
		form: Coding? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		item: [ClaimResponseItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [ClaimResponseNote]? = nil,
		organization: Reference? = nil,
		originalRuleset: Coding? = nil,
		outcome: FHIRPrimitive<RemittanceOutcome>? = nil,
		payeeType: Coding? = nil,
		paymentAdjustment: Quantity? = nil,
		paymentAdjustmentReason: Coding? = nil,
		paymentAmount: Quantity? = nil,
		paymentDate: FHIRPrimitive<FHIRDate>? = nil,
		paymentRef: Identifier? = nil,
		request: Reference? = nil,
		requestOrganization: Reference? = nil,
		requestProvider: Reference? = nil,
		reserved: Coding? = nil,
		ruleset: Coding? = nil,
		text: Narrative? = nil,
		totalBenefit: Quantity? = nil,
		totalCost: Quantity? = nil,
		unallocDeductable: Quantity? = nil
	) {
		self.init()
		self.addItem = addItem
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.organization = organization
		self.originalRuleset = originalRuleset
		self.outcome = outcome
		self.payeeType = payeeType
		self.paymentAdjustment = paymentAdjustment
		self.paymentAdjustmentReason = paymentAdjustmentReason
		self.paymentAmount = paymentAmount
		self.paymentDate = paymentDate
		self.paymentRef = paymentRef
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.reserved = reserved
		self.ruleset = ruleset
		self.text = text
		self.totalBenefit = totalBenefit
		self.totalCost = totalCost
		self.unallocDeductable = unallocDeductable
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case addItem
		case contained
		case coverage
		case created; case _created
		case disposition; case _disposition
		case error
		case `extension` = "extension"
		case form
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case item
		case language; case _language
		case meta
		case modifierExtension
		case note
		case organization
		case originalRuleset
		case outcome; case _outcome
		case payeeType
		case paymentAdjustment
		case paymentAdjustmentReason
		case paymentAmount
		case paymentDate; case _paymentDate
		case paymentRef
		case request
		case requestOrganization
		case requestProvider
		case reserved
		case ruleset
		case text
		case totalBenefit
		case totalCost
		case unallocDeductable
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.addItem = try [ClaimResponseAddItem](from: _container, forKeyIfPresent: .addItem)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try [ClaimResponseCoverage](from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [ClaimResponseError](from: _container, forKeyIfPresent: .error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try Coding(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.item = try [ClaimResponseItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [ClaimResponseNote](from: _container, forKeyIfPresent: .note)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.outcome = try FHIRPrimitive<RemittanceOutcome>(from: _container, forKeyIfPresent: .outcome, auxiliaryKey: ._outcome)
		self.payeeType = try Coding(from: _container, forKeyIfPresent: .payeeType)
		self.paymentAdjustment = try Quantity(from: _container, forKeyIfPresent: .paymentAdjustment)
		self.paymentAdjustmentReason = try Coding(from: _container, forKeyIfPresent: .paymentAdjustmentReason)
		self.paymentAmount = try Quantity(from: _container, forKeyIfPresent: .paymentAmount)
		self.paymentDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.paymentRef = try Identifier(from: _container, forKeyIfPresent: .paymentRef)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.reserved = try Coding(from: _container, forKeyIfPresent: .reserved)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.totalBenefit = try Quantity(from: _container, forKeyIfPresent: .totalBenefit)
		self.totalCost = try Quantity(from: _container, forKeyIfPresent: .totalCost)
		self.unallocDeductable = try Quantity(from: _container, forKeyIfPresent: .unallocDeductable)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try addItem?.encode(on: &_container, forKey: .addItem)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try outcome?.encode(on: &_container, forKey: .outcome, auxiliaryKey: ._outcome)
		try payeeType?.encode(on: &_container, forKey: .payeeType)
		try paymentAdjustment?.encode(on: &_container, forKey: .paymentAdjustment)
		try paymentAdjustmentReason?.encode(on: &_container, forKey: .paymentAdjustmentReason)
		try paymentAmount?.encode(on: &_container, forKey: .paymentAmount)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try paymentRef?.encode(on: &_container, forKey: .paymentRef)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try reserved?.encode(on: &_container, forKey: .reserved)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try text?.encode(on: &_container, forKey: .text)
		try totalBenefit?.encode(on: &_container, forKey: .totalBenefit)
		try totalCost?.encode(on: &_container, forKey: .totalCost)
		try unallocDeductable?.encode(on: &_container, forKey: .unallocDeductable)
	}
}

/**
 Insurer added line items.
 
 The first tier service adjudications for payor added services.
 */
public typealias ClaimResponseAddItem = BackboneElement

/**
 Added items adjudication.
 
 The adjudications results.
 */
public typealias ClaimResponseAddItemAdjudication = BackboneElement

/**
 Added items details.
 
 The second tier service adjudications for payor added services.
 */
public typealias ClaimResponseAddItemDetail = BackboneElement

/**
 Added items detail adjudication.
 
 The adjudications results.
 */
public typealias ClaimResponseAddItemDetailAdjudication = BackboneElement

/**
 Insurance or medical plan.
 
 Financial instrument by which payment information for health care.
 */
public typealias ClaimResponseCoverage = BackboneElement

/**
 Processing errors.
 
 Mutually exclusive with Services Provided (Item).
 */
public typealias ClaimResponseError = BackboneElement

/**
 Line items.
 
 The first tier service adjudications for submitted services.
 */
public typealias ClaimResponseItem = BackboneElement

/**
 Adjudication details.
 
 The adjudications results.
 */
public typealias ClaimResponseItemAdjudication = BackboneElement

/**
 Detail line items.
 
 The second tier service adjudications for submitted services.
 */
public typealias ClaimResponseItemDetail = BackboneElement

/**
 Detail adjudication.
 
 The adjudications results.
 */
public typealias ClaimResponseItemDetailAdjudication = BackboneElement

/**
 Subdetail line items.
 
 The third tier service adjudications for submitted services.
 */
public typealias ClaimResponseItemDetailSubDetail = BackboneElement

/**
 Subdetail adjudication.
 
 The adjudications results.
 */
public typealias ClaimResponseItemDetailSubDetailAdjudication = BackboneElement

/**
 Processing notes.
 
 Note text.
 */
public typealias ClaimResponseNote = BackboneElement
