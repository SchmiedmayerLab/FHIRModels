//
//  HealthcareService.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/HealthcareService)
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
 The details of a healthcare service available at a location.
 */
public struct HealthcareService: DomainResource {
	
	public static let resourceType: ResourceType = .healthcareService
	
	/// If an appointment is required for access to this service
	public var appointmentRequired: FHIRPrimitive<FHIRBool>?
	
	/// Description of availability exceptions
	public var availabilityExceptions: FHIRPrimitive<FHIRString>?
	
	/// Times the Service Site is available
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Collection of characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Location(s) service is inteded for/available to
	public var coverageArea: [Reference]?
	
	/// Specific eligibility requirements required to use the service
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var eligibilityNote: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Extra details about the service that can't be placed in the other fields
	public var extraDetails: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifiers for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Location where service may be provided
	public var location: Reference
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Not available during this time due to provided reason
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service
	public var photo: Attachment?
	
	/// Program Names that categorize the service
	public var programName: [FHIRPrimitive<FHIRString>]?
	
	/// Organization that provides this service
	public var providedBy: Reference?
	
	/// PKI Public keys to support secure communications
	public var publicKey: FHIRPrimitive<FHIRString>?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// Broad category of service being performed or delivered
	public var serviceCategory: CodeableConcept?
	
	/// Description of service as presented to a consumer while searching
	public var serviceName: FHIRPrimitive<FHIRString>?
	
	/// Conditions under which service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Specific service delivered or performed
	public var serviceType: [HealthcareServiceServiceType]?
	
	/// Contacts related to the healthcare service
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init(location: Reference) {
		self.location = location
	}
	
	/// Convenience initializer
	public init(
		appointmentRequired: FHIRPrimitive<FHIRBool>? = nil,
		availabilityExceptions: FHIRPrimitive<FHIRString>? = nil,
		availableTime: [HealthcareServiceAvailableTime]? = nil,
		characteristic: [CodeableConcept]? = nil,
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		coverageArea: [Reference]? = nil,
		eligibility: CodeableConcept? = nil,
		eligibilityNote: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		extraDetails: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		notAvailable: [HealthcareServiceNotAvailable]? = nil,
		photo: Attachment? = nil,
		programName: [FHIRPrimitive<FHIRString>]? = nil,
		providedBy: Reference? = nil,
		publicKey: FHIRPrimitive<FHIRString>? = nil,
		referralMethod: [CodeableConcept]? = nil,
		serviceCategory: CodeableConcept? = nil,
		serviceName: FHIRPrimitive<FHIRString>? = nil,
		serviceProvisionCode: [CodeableConcept]? = nil,
		serviceType: [HealthcareServiceServiceType]? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil
	) {
		self.init(location: location)
		self.appointmentRequired = appointmentRequired
		self.availabilityExceptions = availabilityExceptions
		self.availableTime = availableTime
		self.characteristic = characteristic
		self.comment = comment
		self.contained = contained
		self.coverageArea = coverageArea
		self.eligibility = eligibility
		self.eligibilityNote = eligibilityNote
		self.`extension` = `extension`
		self.extraDetails = extraDetails
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notAvailable = notAvailable
		self.photo = photo
		self.programName = programName
		self.providedBy = providedBy
		self.publicKey = publicKey
		self.referralMethod = referralMethod
		self.serviceCategory = serviceCategory
		self.serviceName = serviceName
		self.serviceProvisionCode = serviceProvisionCode
		self.serviceType = serviceType
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case appointmentRequired; case _appointmentRequired
		case availabilityExceptions; case _availabilityExceptions
		case availableTime
		case characteristic
		case comment; case _comment
		case contained
		case coverageArea
		case eligibility
		case eligibilityNote; case _eligibilityNote
		case `extension` = "extension"
		case extraDetails; case _extraDetails
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case notAvailable
		case photo
		case programName; case _programName
		case providedBy
		case publicKey; case _publicKey
		case referralMethod
		case serviceCategory
		case serviceName; case _serviceName
		case serviceProvisionCode
		case serviceType
		case telecom
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.appointmentRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		self.availabilityExceptions = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		self.availableTime = try [HealthcareServiceAvailableTime](from: _container, forKeyIfPresent: .availableTime)
		self.characteristic = try [CodeableConcept](from: _container, forKeyIfPresent: .characteristic)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverageArea = try [Reference](from: _container, forKeyIfPresent: .coverageArea)
		self.eligibility = try CodeableConcept(from: _container, forKeyIfPresent: .eligibility)
		self.eligibilityNote = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eligibilityNote, auxiliaryKey: ._eligibilityNote)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.extraDetails = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .extraDetails, auxiliaryKey: ._extraDetails)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKey: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notAvailable = try [HealthcareServiceNotAvailable](from: _container, forKeyIfPresent: .notAvailable)
		self.photo = try Attachment(from: _container, forKeyIfPresent: .photo)
		self.programName = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .programName, auxiliaryKey: ._programName)
		self.providedBy = try Reference(from: _container, forKeyIfPresent: .providedBy)
		self.publicKey = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publicKey, auxiliaryKey: ._publicKey)
		self.referralMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .referralMethod)
		self.serviceCategory = try CodeableConcept(from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serviceName, auxiliaryKey: ._serviceName)
		self.serviceProvisionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceProvisionCode)
		self.serviceType = try [HealthcareServiceServiceType](from: _container, forKeyIfPresent: .serviceType)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try appointmentRequired?.encode(on: &_container, forKey: .appointmentRequired, auxiliaryKey: ._appointmentRequired)
		try availabilityExceptions?.encode(on: &_container, forKey: .availabilityExceptions, auxiliaryKey: ._availabilityExceptions)
		try availableTime?.encode(on: &_container, forKey: .availableTime)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverageArea?.encode(on: &_container, forKey: .coverageArea)
		try eligibility?.encode(on: &_container, forKey: .eligibility)
		try eligibilityNote?.encode(on: &_container, forKey: .eligibilityNote, auxiliaryKey: ._eligibilityNote)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try extraDetails?.encode(on: &_container, forKey: .extraDetails, auxiliaryKey: ._extraDetails)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notAvailable?.encode(on: &_container, forKey: .notAvailable)
		try photo?.encode(on: &_container, forKey: .photo)
		try programName?.encode(on: &_container, forKey: .programName, auxiliaryKey: ._programName)
		try providedBy?.encode(on: &_container, forKey: .providedBy)
		try publicKey?.encode(on: &_container, forKey: .publicKey, auxiliaryKey: ._publicKey)
		try referralMethod?.encode(on: &_container, forKey: .referralMethod)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceName?.encode(on: &_container, forKey: .serviceName, auxiliaryKey: ._serviceName)
		try serviceProvisionCode?.encode(on: &_container, forKey: .serviceProvisionCode)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Times the Service Site is available.
 
 A collection of times that the Service Site is available.
 */
public typealias HealthcareServiceAvailableTime = BackboneElement

/**
 Not available during this time due to provided reason.
 
 The HealthcareService is not available during this period of time due to the provided reason.
 */
public typealias HealthcareServiceNotAvailable = BackboneElement

/**
 Specific service delivered or performed.
 
 A specific type of service that may be delivered or performed.
 */
public typealias HealthcareServiceServiceType = BackboneElement
