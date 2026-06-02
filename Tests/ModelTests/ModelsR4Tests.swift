//
//  ModelsR4Tests.swift
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
import ModelsR4

class ModelsR4Tests: XCTestCase {
	
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
		
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
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
        // From https://hl7.org/fhir/R4/allergyintolerance-example.json.html
        let json = """
            {
                "resourceType": "AllergyIntolerance",
                "id": "example",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\\"http://www.w3.org/1999/xhtml\\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>identifier</b>: 49476534</p><p><b>clinicalStatus</b>: Active <span>(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical code 'active' = 'Active', given as 'Active'})</span></p><p><b>verificationStatus</b>: Confirmed <span>(Details : {http://terminology.hl7.org/CodeSystem/allergyintolerance-verification code 'confirmed' = 'Confirmed', given as 'Confirmed'})</span></p><p><b>type</b>: allergy</p><p><b>category</b>: food</p><p><b>criticality</b>: high</p><p><b>code</b>: Cashew nuts <span>(Details : {SNOMED CT code '227493005' = 'Cashew nuts', given as 'Cashew nuts'})</span></p><p><b>patient</b>: <a>Patient/example</a></p><p><b>onset</b>: 01/01/2004</p><p><b>recordedDate</b>: 09/10/2014 2:58:00 PM</p><p><b>recorder</b>: <a>Practitioner/example</a></p><p><b>asserter</b>: <a>Patient/example</a></p><p><b>lastOccurrence</b>: 01/06/2012</p><p><b>note</b>: The criticality is high becasue of the observed anaphylactic reaction when challenged with cashew extract.</p><blockquote><p><b>reaction</b></p><p><b>substance</b>: cashew nut allergenic extract Injectable Product <span>(Details : {RxNorm code '1160593' = 'cashew nut allergenic extract Injectable Product', given as 'cashew nut allergenic extract Injectable Product'})</span></p><p><b>manifestation</b>: Anaphylactic reaction <span>(Details : {SNOMED CT code '39579001' = 'Anaphylaxis', given as 'Anaphylactic reaction'})</span></p><p><b>description</b>: Challenge Protocol. Severe reaction to subcutaneous cashew extract. Epinephrine administered</p><p><b>onset</b>: 12/06/2012</p><p><b>severity</b>: severe</p><p><b>exposureRoute</b>: Subcutaneous route <span>(Details : {SNOMED CT code '34206005' = 'Subcutaneous route', given as 'Subcutaneous route'})</span></p></blockquote><blockquote><p><b>reaction</b></p><p><b>manifestation</b>: Urticaria <span>(Details : {SNOMED CT code '64305001' = 'Urticaria', given as 'Urticaria'})</span></p><p><b>onset</b>: 01/01/2004</p><p><b>severity</b>: moderate</p><p><b>note</b>: The patient reports that the onset of urticaria was within 15 minutes of eating cashews.</p></blockquote></div>"
                },
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
                "type": "allergy",
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
                "lastOccurrence": "2012-06",
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
                                "coding": [{"system": "http://snomed.info/sct","code": "39579001","display": "Anaphylactic reaction"}]
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
                                "coding": [{"system": "http://snomed.info/sct","code": "64305001","display": "Urticaria"}]
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
        XCTAssertEqual(allergy.id, "example")
        XCTAssertEqual(allergy.criticality, AllergyIntoleranceCriticality.high.asPrimitive())
        XCTAssertEqual(allergy.recordedDate?.value?.date.month, 10)
        XCTAssertEqual(allergy.patient.reference, "Patient/example")
        XCTAssertEqual(allergy.reaction?[0].manifestation[0].coding?[0].code, "39579001")
    }
}
