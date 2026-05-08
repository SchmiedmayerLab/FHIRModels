//
//  ModelsDSTU2Tests.swift
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

import XCTest
import ModelsDSTU2

class ModelsDSTU2Tests: XCTestCase {
	
	@available(OSX 10.15, *)
	@available(iOS 13.0, *)
	@available(watchOS 7.0, *)
	@available(tvOS 13.0, *)
	func testGroupResourceDecodeEncode() throws {
		let string =
            """
            {
                "resourceType": "Group",
                "id": "101",
                "text": {
                    "status": "additional",
                    "div": "<div><p>Herd of 25 horses</p><p>Gender: mixed</p><p>Owner: John Smith</p></div>"
                },
                "type": "animal",
                "actual": true,
                "code": {
                    "text": "Horse"
                },
                "name": "John's herd",
                "quantity": 25,
                "characteristic": [
                    {
                        "code": {
                            "text": "gender"
                        },
                        "valueCodeableConcept": {
                            "text": "mixed"
                        },
                        "exclude": false
                    },
                    {
                        "code": {
                            "text": "owner"
                        },
                        "valueCodeableConcept": {
                            "text": "John Smith"
                        },
                        "exclude": false
                    }
                ]
            }
            """
		guard let data = string.data(using: .utf8) else {
			throw TestError.failed("encoding string to UTF8 data")
		}
		
		let decoder = JSONDecoder()
		let group = try decoder.decode(Group.self, from: data)
		XCTAssertEqual(type(of: group).resourceType, .group)
		XCTAssertEqual(group.id, "101")
		XCTAssertEqual(group.type.value, .animal)
		XCTAssertEqual(group.actual, true)
		XCTAssertEqual(group.quantity, 25)
		XCTAssertEqual(group.code?.text, "Horse")
		XCTAssertEqual(group.characteristic?.count, 2)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .withoutEscapingSlashes
		let encoded = try encoder.encode(group)
		guard let encodedString = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("decoding UTF8 data to string")
		}
		XCTAssertTrue(encodedString.contains("\"id\":\"101\""))
		XCTAssertTrue(encodedString.contains("\"type\":\"animal\""))
		XCTAssertTrue(encodedString.contains("\"actual\":true"))
		XCTAssertTrue(encodedString.contains("\"quantity\":25"))
		XCTAssertTrue(encodedString.contains("\"code\":{\"text\":\"Horse\"}"))
		XCTAssertTrue(encodedString.contains("\"characteristic\":["))
	}
    
    func testAllergyIntolerance() throws {
        // From https://hl7.org/fhir/DSTU2/allergyintolerance-example.json.html
        let json = """
            {
                "category": "food",
                "criticality": "CRITH",
                "id": "example",
                "identifier": [{"system": "http://acme.com/ids/patients/risks","value": "49476534"}],
                "lastOccurence": "2012-06",
                "patient": {
                    "reference": "Patient/example"
                },
                "reaction": [
                    {
                        "description": "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered",
                        "manifestation": [
                            {
                                "coding": [{"code": "39579001","display": "Anaphylactic reaction","system": "http://snomed.info/sct"}]
                            }
                        ],
                        "onset": "2012-06-12",
                        "severity": "severe",
                        "substance": {
                            "coding": [
                                {
                                    "code": "C3214954",
                                    "display": "cashew nut allergenic extract Injectable Product",
                                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm"
                                }
                            ]
                        }
                    },
                    {
                        "certainty": "likely",
                        "manifestation": [
                            {
                                "coding": [{"code": "64305001","display": "Urticaria","system": "http://snomed.info/sct"}]
                            }
                        ],
                        "onset": "2004",
                        "severity": "moderate"
                    }
                ],
                "recordedDate": "2014-10-09T14:58:00+11:00",
                "recorder": {
                    "reference": "Practitioner/example"
                },
                "resourceType": "AllergyIntolerance",
                "status": "confirmed",
                "substance": {
                    "coding": [{"code": "227493005","display": "Cashew nuts","system": "http://snomed.info/sct"}]
                },
                "text": {
                    "div": "<div><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>identifier</b>: 49476534</p><p><b>recordedDate</b>: 09/10/2014 2:58:00 PM</p><p><b>recorder</b>: <a>Practitioner/example</a></p><p><b>patient</b>: <a>Patient/example</a></p><p><b>substance</b>: Cashew nuts <span>(Details : {SNOMED CT code '227493005' = '227493005', given as 'Cashew nuts'})</span></p><p><b>status</b>: confirmed</p><p><b>criticality</b>: CRITH</p><p><b>type</b>: allergy</p><p><b>category</b>: food</p><p><b>lastOccurence</b>: 01/06/2012</p><blockquote><p><b>reaction</b></p><p><b>substance</b>: cashew nut allergenic extract Injectable Product <span>(Details : {RxNorm code 'C3214954' = '??', given as 'cashew nut allergenic extract Injectable Product'})</span></p><p><b>manifestation</b>: Anaphylactic reaction <span>(Details : {SNOMED CT code '39579001' = '39579001', given as 'Anaphylactic reaction'})</span></p><p><b>description</b>: Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered</p><p><b>onset</b>: 12/06/2012</p><p><b>severity</b>: severe</p></blockquote><blockquote><p><b>reaction</b></p><p><b>certainty</b>: likely</p><p><b>manifestation</b>: Urticaria <span>(Details : {SNOMED CT code '64305001' = '64305001', given as 'Urticaria'})</span></p><p><b>onset</b>: 01/01/2004</p><p><b>severity</b>: moderate</p></blockquote></div>",
                    "status": "generated"
                },
                "type": "allergy"
            }
            """
        guard let data = json.data(using: .utf8) else {
            throw TestError.failed("encoding string to UTF8 data")
        }
        
        let decoder = JSONDecoder()
        let allergy = try decoder.decode(AllergyIntolerance.self, from: data)
        XCTAssertEqual(allergy.id, "example")
        XCTAssertEqual(allergy.criticality, AllergyIntoleranceCriticality.CRITH.asPrimitive())
        XCTAssertEqual(allergy.recordedDate?.value?.date.month, 10)
        XCTAssertEqual(allergy.patient.reference, "Patient/example")
        XCTAssertEqual(allergy.reaction?[0].manifestation[0].coding?[0].code, "39579001")
    }
}
