//
//  QuestionnaireResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse)
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
 A structured set of questions and their answers.
 
 A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
 corresponding to the structure of the grouping of the underlying questions.
 */
public struct QuestionnaireResponse: DomainResource {
	
	public static let resourceType: ResourceType = .questionnaireResponse
	
	/// Person who received and recorded the answers
	public var author: Reference?
	
	/// Date this version was authored
	public var authored: FHIRPrimitive<DateTime>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Primary encounter during which the answers were collected
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Grouped questions
	public var group: QuestionnaireResponseGroup?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique id for this set of answers
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Form being answered
	public var questionnaire: Reference?
	
	/// The person who answered the questions
	public var source: Reference?
	
	/// The lifecycle status of the questionnaire response as a whole.
	/// Restricted to: ['in-progress', 'completed', 'amended']
	public var status: FHIRPrimitive<QuestionnaireResponseStatus>
	
	/// The subject of the questions
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<QuestionnaireResponseStatus>) {
		self.status = status
	}
	
	/// Convenience initializer
	public init(
		author: Reference? = nil,
		authored: FHIRPrimitive<DateTime>? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		group: QuestionnaireResponseGroup? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		questionnaire: Reference? = nil,
		source: Reference? = nil,
		status: FHIRPrimitive<QuestionnaireResponseStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(status: status)
		self.author = author
		self.authored = authored
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.questionnaire = questionnaire
		self.source = source
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case authored; case _authored
		case contained
		case encounter
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case questionnaire
		case source
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authored = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authored, auxiliaryKey: ._authored)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try QuestionnaireResponseGroup(from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.questionnaire = try Reference(from: _container, forKeyIfPresent: .questionnaire)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<QuestionnaireResponseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try authored?.encode(on: &_container, forKey: .authored, auxiliaryKey: ._authored)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try questionnaire?.encode(on: &_container, forKey: .questionnaire)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Grouped questions.
 
 A group of questions to a possibly similarly grouped set of questions in the questionnaire response.
 */
public typealias QuestionnaireResponseGroup = BackboneElement

/**
 Questions in this group.
 
 Set of questions within this group. The order of questions within the group is relevant.
 */
public typealias QuestionnaireResponseGroupQuestion = BackboneElement

/**
 The response(s) to the question.
 
 The respondent's answer(s) to the question.
 */
public typealias QuestionnaireResponseGroupQuestionAnswer = BackboneElement
