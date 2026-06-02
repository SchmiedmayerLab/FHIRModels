//
//  ModelsBuildTests.swift
//  HealthSoftware
//
//  Copyright 2020 Apple Inc.
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

import Foundation
import ModelsBuild
import Testing

struct ModelsBuildTests {
	
	@available(OSX 10.15, *)
	@available(iOS 13.0, *)
	@available(watchOS 7.0, *)
	@available(tvOS 13.0, *)
	@Test
    func groupResourceDecodeEncode() throws {
		let string =
            """
            {
                "characteristic": [{
                    "code": {
                        "text": "gender"
                    },
                    "exclude": false,
                    "valueCodeableConcept": {"text": "female"}
                }],
                "code": {
                    "coding": [{
                        "code": "388393002",
                        "display": "Genus Sus (organism)",
                        "system": "http://snomed.info/sct"
                    },
                    {
                        "code": "POR",
                        "display": "porcine",
                        "system": "https://www.aphis.usda.gov"
                    }],
                    "text": "Porcine"
                },
                "extension": [{
                    "url": "http://example.org/fhir/StructureDefinition/owner",
                    "valueReference": {
                        "display": "Peter Chalmers",
                        "reference": "RelatedPerson/peter"
                    }
                }],
                "id": "herd1",
                "identifier": [{
                    "system": "https://vetmed.iastate.edu/vdl",
                    "value": "20171120-1234"
                }],
                "membership": "enumerated",
                "name": "Breeding herd",
                "quantity": 2500,
                "resourceType": "Group",
                "status": "active",
                "type": "animal"
            }
            """
		guard let data = string.data(using: .utf8) else {
			throw TestError.failed("encoding string to UTF8 data")
		}
		
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		let group = try decoder.decode(Group.self, from: data)
		#expect(type(of: group).resourceType == .group)
		#expect(group.id == "herd1")
        #expect(try #require(group.status) == .active)
        #expect(group.type?.value == .animal)
		#expect(group.quantity == 2500)
		#expect(group.code?.text == "Porcine")
		#expect(group.characteristic?.count == 1)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .withoutEscapingSlashes
		let encoded = try encoder.encode(group)
		guard let encodedString = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("decoding UTF8 data to string")
		}
        #expect(encodedString.contains("\"id\":\"herd1\""))
        #expect(encodedString.contains("\"type\":\"animal\""))
        #expect(encodedString.contains("\"status\":\"active\""))
        #expect(encodedString.contains("\"membership\":\"enumerated\""))
        #expect(encodedString.contains("\"name\":\"Breeding herd\""))
        #expect(encodedString.contains("\"quantity\":25"))
        #expect(encodedString.contains("\"text\":\"Porcine\""))
        #expect(encodedString.contains("\"system\":\"http://snomed.info/sct\""))
        #expect(encodedString.contains("\"characteristic\":["))
	}
    
    @available(OSX 10.15, *)
    @available(iOS 13.0, *)
    @available(watchOS 7.0, *)
    @available(tvOS 13.0, *)
    @Test
    func decodeAllergyIntolerance() throws {
        // From https://build.fhir.org/allergyintolerance-example.json.html
        let json = """
            {
                "resourceType": "AllergyIntolerance",
                "id": "example",
                "identifier": [{"system": "http://acme.com/ids/patients/risks","value": "49476534"}],
                "clinicalStatus": {
                    "coding": [{"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical","code": "active","display": "Active"}]
                },
                "verificationStatus": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
                            "code": "confirmed",
                            "display": "Confirmed"
                        }
                    ]
                },
                "type": {
                    "coding": [{"system": "http://hl7.org/fhir/allergy-intolerance-type","code": "allergy","display": "Allergy"}]
                },
                "category": ["food"],
                "criticality": "high",
                "code": {
                    "coding": [{"system": "http://snomed.info/sct","code": "227493005","display": "Cashew nuts"}]
                },
                "patient": {
                    "reference": "Patient/example"
                },
                "onsetDateTime": "2004",
                "recordedDate": "2014-10-09T14:58:00+11:00",
                "recorder": {
                    "reference": "Practitioner/example"
                },
                "asserter": {
                    "reference": "Patient/example"
                },
                "note": [{"text": "The criticality is high becasue of the observed anaphylactic reaction when challenged with cashew extract."}],
                "reaction": [
                    {
                        "substance": {
                            "coding": [
                                {
                                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                                    "code": "1160593",
                                    "display": "cashew nut allergenic extract Injectable Product"
                                }
                            ]
                        },
                        "manifestation": [
                            {
                                "concept": {
                                    "coding": [{"system": "http://snomed.info/sct","code": "39579001","display": "Anaphylactic reaction"}]
                                }
                            }
                        ],
                        "description": "Challenge Protocol. Severe reaction to subcutaneous cashew extract. Epinephrine administered",
                        "onset": "2012-06-12",
                        "severity": "severe",
                        "exposureRoute": {
                            "coding": [{"system": "http://snomed.info/sct","code": "34206005","display": "Subcutaneous route"}]
                        }
                    },
                    {
                        "manifestation": [
                            {
                                "concept": {
                                    "coding": [{"system": "http://snomed.info/sct","code": "64305001","display": "Urticaria"}]
                                }
                            }
                        ],
                        "onset": "2004",
                        "severity": "moderate",
                        "note": [{"text": "The patient reports that the onset of urticaria was within 15 minutes of eating cashews."}]
                    }
                ]
            }
            """
        guard let data = json.data(using: .utf8) else {
            throw TestError.failed("encoding string to UTF8 data")
        }
        
        let decoder = JSONDecoder.fhirModelsReadyDecoder()
        let allergy = try decoder.decode(AllergyIntolerance.self, from: data)
        #expect(allergy.id == "example")
        #expect(allergy.criticality == AllergyIntoleranceCriticality.high.asPrimitive())
        #expect(allergy.recordedDate?.value?.date.month == 10)
        #expect(allergy.patient.reference == "Patient/example")
        #expect(allergy.reaction?[0].manifestation[0].concept?.coding?[0].code == "39579001")
    }
}
