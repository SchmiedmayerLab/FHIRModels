//
//  NutritionOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/NutritionOrder)
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
 A request for a diet, formula or nutritional supplement.
 
 A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
 */
public struct NutritionOrder: DomainResource {
	
	public static let resourceType: ResourceType = .nutritionOrder
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date and time the nutrition order was requested
	public var dateTime: FHIRPrimitive<DateTime>
	
	/// The encounter associated with this nutrition order
	public var encounter: Reference?
	
	/// Enteral formula components
	public var enteralFormula: NutritionOrderEnteralFormula?
	
	/// Order-specific modifier about the type of food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Who ordered the diet, formula or nutritional supplement
	public var orderer: Reference?
	
	/// The person who requires the diet, formula or nutritional supplement
	public var patient: Reference
	
	/// The workflow status of the nutrition order/request.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'active', 'on-hold', 'completed', 'cancelled']
	public var status: FHIRPrimitive<NutritionOrderStatus>?
	
	/// Supplement components
	public var supplement: [NutritionOrderSupplement]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer taking all required properties
	public init(dateTime: FHIRPrimitive<DateTime>, patient: Reference) {
		self.dateTime = dateTime
		self.patient = patient
	}
	
	/// Convenience initializer
	public init(
		allergyIntolerance: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		dateTime: FHIRPrimitive<DateTime>,
		encounter: Reference? = nil,
		enteralFormula: NutritionOrderEnteralFormula? = nil,
		excludeFoodModifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		foodPreferenceModifier: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		oralDiet: NutritionOrderOralDiet? = nil,
		orderer: Reference? = nil,
		patient: Reference,
		status: FHIRPrimitive<NutritionOrderStatus>? = nil,
		supplement: [NutritionOrderSupplement]? = nil,
		text: Narrative? = nil
	) {
		self.init(dateTime: dateTime, patient: patient)
		self.allergyIntolerance = allergyIntolerance
		self.contained = contained
		self.encounter = encounter
		self.enteralFormula = enteralFormula
		self.excludeFoodModifier = excludeFoodModifier
		self.`extension` = `extension`
		self.foodPreferenceModifier = foodPreferenceModifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.oralDiet = oralDiet
		self.orderer = orderer
		self.status = status
		self.supplement = supplement
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case allergyIntolerance
		case contained
		case dateTime; case _dateTime
		case encounter
		case enteralFormula
		case excludeFoodModifier
		case `extension` = "extension"
		case foodPreferenceModifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case oralDiet
		case orderer
		case patient
		case status; case _status
		case supplement
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allergyIntolerance = try [Reference](from: _container, forKeyIfPresent: .allergyIntolerance)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.enteralFormula = try NutritionOrderEnteralFormula(from: _container, forKeyIfPresent: .enteralFormula)
		self.excludeFoodModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .excludeFoodModifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.foodPreferenceModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .foodPreferenceModifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.oralDiet = try NutritionOrderOralDiet(from: _container, forKeyIfPresent: .oralDiet)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.status = try FHIRPrimitive<NutritionOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.supplement = try [NutritionOrderSupplement](from: _container, forKeyIfPresent: .supplement)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		// Encode all our properties (own and inherited)
		try allergyIntolerance?.encode(on: &_container, forKey: .allergyIntolerance)
		try contained?.encode(on: &_container, forKey: .contained)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enteralFormula?.encode(on: &_container, forKey: .enteralFormula)
		try excludeFoodModifier?.encode(on: &_container, forKey: .excludeFoodModifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try foodPreferenceModifier?.encode(on: &_container, forKey: .foodPreferenceModifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try oralDiet?.encode(on: &_container, forKey: .oralDiet)
		try orderer?.encode(on: &_container, forKey: .orderer)
		try patient.encode(on: &_container, forKey: .patient)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supplement?.encode(on: &_container, forKey: .supplement)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Enteral formula components.
 
 Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to
 the oral cavity.
 */
public typealias NutritionOrderEnteralFormula = BackboneElement

/**
 Formula feeding instruction as structured data.
 
 Formula administration instructions as structured data.  This repeating structure allows for changing the
 administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an
 instruction to increase the rate of continuous feeding every 2 hours.
 */
public typealias NutritionOrderEnteralFormulaAdministration = BackboneElement

/**
 Oral diet components.
 
 Diet given orally in contrast to enteral (tube) feeding.
 */
public typealias NutritionOrderOralDiet = BackboneElement

/**
 Required  nutrient modifications.
 
 Class that defines the quantity and type of nutrient modifications required for the oral diet.
 */
public typealias NutritionOrderOralDietNutrient = BackboneElement

/**
 Required  texture modifications.
 
 Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
 */
public typealias NutritionOrderOralDietTexture = BackboneElement

/**
 Supplement components.
 
 Oral nutritional products given in order to add further nutritional value to the patient's diet.
 */
public typealias NutritionOrderSupplement = BackboneElement
