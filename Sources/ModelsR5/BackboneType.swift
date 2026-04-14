//
//  BackboneType.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BackboneType)
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
 Base for datatypes that can carry modifier extensions.
 
 Base definition for the few data types that are allowed to carry modifier extensions.
 */
public protocol BackboneType: DataType {
	
	/// Extensions that cannot be ignored even if unrecognized
	var modifierExtension: [Extension]? { get set }
}
