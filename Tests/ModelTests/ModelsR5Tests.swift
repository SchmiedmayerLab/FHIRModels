//
//  ModelsR5Tests.swift
//  HealthSoftware
//
//  Copyright 2023 Apple Inc.
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
import ModelsR5

class ModelsR5Tests: XCTestCase {
	
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
				"active": true,
				"code": {
					"text": "Horse"
				},
				"name": "John's herd",
				"quantity": 25,
				"membership": "enumerated",
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
		XCTAssertEqual(group.active, true)
		XCTAssertEqual(group.quantity, 25)
		XCTAssertEqual(group.membership.value, .enumerated)
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
		XCTAssertTrue(encodedString.contains("\"active\":true"))
		XCTAssertTrue(encodedString.contains("\"quantity\":25"))
		XCTAssertTrue(encodedString.contains("\"membership\":\"enumerated\""))
		XCTAssertTrue(encodedString.contains("\"code\":{\"text\":\"Horse\"}"))
		XCTAssertTrue(encodedString.contains("\"characteristic\":["))
	}
    
    func testAllergyIntolerance() throws {
        // From https://hl7.org/fhir/R5/allergyintolerance-example.json.html
        let json = """
            {
                "resourceType": "AllergyIntolerance",
                "id": "example",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\\"http://www.w3.org/1999/xhtml\\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\\"example\\"> </a></p><div style=\\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\\"><p style=\\"margin-bottom: 0px\\">Resource AllergyIntolerance &quot;example&quot; </p></div><p><b>identifier</b>: <span title=\\"  an identifier used for this allergic propensity (adverse reaction risk)  \\">id: 49476534</span></p><p><b>clinicalStatus</b>: <span title=\\"  this individual has had several reactions  \\">Active <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"http://terminology.hl7.org/5.1.0/CodeSystem-allergyintolerance-clinical.html\\">AllergyIntolerance Clinical Status Codes</a>#active)</span></span></p><p><b>verificationStatus</b>: Confirmed <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"http://terminology.hl7.org/5.1.0/CodeSystem-allergyintolerance-verification.html\\">AllergyIntolerance Verification Status</a>#confirmed)</span></p><p><b>type</b>: <span title=\\"  note: it's often unknown whether an allergy is mediated by an immune response, and not as significant as once thought  \\">Allergy <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"codesystem-allergy-intolerance-type.html\\">Allergy Intolerance Type</a>#allergy)</span></span></p><p><b>category</b>: <span title=\\"  this categorization is implied by &quot;cashew nut&quot; and therefore basically \\n    redundant, but many systems collect this field anyway, since it's either \\n    useful when the substance is not coded, or it's quicker to sort/filter on\\n    than using terminology based reasoning  \\">food</span></p><p><b>criticality</b>: <span title=\\"  there is no question that the allergy is real and serious  \\">high</span></p><p><b>code</b>: <span title=\\"  Allergy or intolerance code (substance, product, condition or negated/excluded statement) or text. A few times, \\n    there's a full description of a complex substance/product - in these caes, use the\\n    extension [url] to refer to a Substance resource.  \\">Cashew nuts <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"https://browser.ihtsdotools.org/\\">SNOMED CT</a>#227493005)</span></span></p><p><b>patient</b>: <span title=\\"  the patient that actually has the risk of adverse reaction  \\"><a href=\\"patient-example.html\\">Patient/example</a> &quot;Peter CHALMERS&quot;</span></p><p><b>onset</b>: <span title=\\"  when the allergy was first noted (in this case the same as reaction.onset of the first occurrence)  \\">2004</span></p><p><b>recordedDate</b>: <span title=\\"  the date that this entry was recorded  \\">2014-10-09T14:58:00+11:00</span></p><blockquote><p><b>participant</b></p><p><b>function</b>: Author <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"http://terminology.hl7.org/5.1.0/CodeSystem-provenance-participant-type.html\\">Provenance participant type</a>#author)</span></p><p><b>actor</b>: <a href=\\"practitioner-example.html\\">Practitioner/example</a> &quot;Adam CAREFUL&quot;</p></blockquote><blockquote><p><b>participant</b></p><p><b>function</b>: Informant <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"http://terminology.hl7.org/5.1.0/CodeSystem-provenance-participant-type.html\\">Provenance participant type</a>#informant)</span></p><p><b>actor</b>: <a href=\\"patient-example.html\\">Patient/example</a> &quot;Peter CHALMERS&quot;</p></blockquote><p><b>lastOccurrence</b>: <span title=\\"  last happened June 2012. Typically, systems either track lastOccurrence,\\n     or a list of events.  \\">2012-06</span></p><p><b>note</b>: <span title=\\"  an additional note about the allergy propensity by the recorder  \\">The criticality is high becasue of the observed anaphylactic reaction when challenged with cashew extract.</span></p><blockquote><p><b>reaction</b></p><p><b>substance</b>: <span title=\\"  \\n      It's possible to list specific things to which the patient responded,\\n      e.g. chocolate (that happened to contain cashew nuts). This event has\\n      such a specific substance. Note that systems should ensure that what\\n      goes in here does not conflict with the substance above, and systems\\n      processing the data can be sure that what is here does not contravene\\n      the substance above\\n     \\">cashew nut allergenic extract Injectable Product <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"http://terminology.hl7.org/5.1.0/CodeSystem-v3-rxNorm.html\\">RxNorm</a>#1160593)</span></span></p><h3>Manifestations</h3><table class=\\"grid\\"><tr><td>-</td><td><b>Concept</b></td></tr><tr><td>*</td><td>Anaphylactic reaction <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"https://browser.ihtsdotools.org/\\">SNOMED CT</a>#39579001)</span></td></tr></table><p><b>description</b>: Challenge Protocol. Severe reaction to subcutaneous cashew extract. Epinephrine administered</p><p><b>onset</b>: 2012-06-12</p><p><b>severity</b>: severe</p><p><b>exposureRoute</b>: Subcutaneous route <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"https://browser.ihtsdotools.org/\\">SNOMED CT</a>#34206005)</span></p></blockquote><blockquote><p><b>reaction</b></p><h3>Manifestations</h3><table class=\\"grid\\"><tr><td>-</td><td><b>Concept</b></td></tr><tr><td>*</td><td>Urticaria <span style=\\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\\"> (<a href=\\"https://browser.ihtsdotools.org/\\">SNOMED CT</a>#64305001)</span></td></tr></table><p><b>onset</b>: 2004</p><p><b>severity</b>: moderate</p><p><b>note</b>: <span title=\\"  an additional note about the reaction by the recorder  \\">The patient reports that the onset of urticaria was within 15 minutes of eating cashews.</span></p></blockquote></div>"
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
                "participant": [
                    {
                        "function": {
                            "coding": [{"system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type","code": "author","display": "Author"}]
                        },
                        "actor": {
                            "reference": "Practitioner/example"
                        }
                    },
                    {
                        "function": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                                    "code": "informant",
                                    "display": "Informant"
                                }
                            ]
                        },
                        "actor": {
                            "reference": "Patient/example"
                        }
                    }
                ],
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
        
        let decoder = JSONDecoder()
        let allergy = try decoder.decode(AllergyIntolerance.self, from: data)
        XCTAssertEqual(allergy.id, "example")
        XCTAssertEqual(allergy.criticality, AllergyIntoleranceCriticality.high.asPrimitive())
        XCTAssertEqual(allergy.recordedDate?.value?.date.month, 10)
        XCTAssertEqual(allergy.patient.reference, "Patient/example")
        XCTAssertEqual(allergy.reaction?[0].manifestation[0].concept?.coding?[0].code, "39579001")
    }
}
