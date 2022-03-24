{
	"contents": {
		"30c9f5b1-35c1-4b5d-9253-1aaa72916aba": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "rpabots.cotizacion",
			"subject": "cotizacion",
			"name": "cotizacion",
			"documentation": "Workflow para aprobacion de cotizacion",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Inicio"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "fin"
				}
			},
			"activities": {
				"89db54f4-5ca6-48bd-ae30-8fc8b8d79b43": {
					"name": "Necesita aprobador?"
				},
				"91a4642b-46d8-44a6-8a80-d5f2314b1394": {
					"name": "Revisar cotizacion"
				},
				"3a1d1343-c283-4258-bab1-2e25607b420d": {
					"name": "Correo de aprobacion automatica"
				},
				"b3fd6c3a-f41e-481f-8286-4b7da8d00168": {
					"name": "Se aprueba?"
				},
				"18b57922-8643-48b6-888d-0301450c75b4": {
					"name": "Correo de aprobacion"
				},
				"41a88a24-5751-46ed-b8e4-fcf343928fef": {
					"name": "Correo de rechazo"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d2c33794-6176-45b3-bfbe-b4c672cba6fb": {
					"name": "SequenceFlow2"
				},
				"7ee9fe6f-fe67-40de-9de0-6841f65f5fd1": {
					"name": "Si"
				},
				"4bbf86b8-9c9b-402c-83d2-8428a6627c9a": {
					"name": "No"
				},
				"b36dd2f7-9e9b-494f-b0c3-0f450257f412": {
					"name": "SequenceFlow6"
				},
				"8d3b0f54-1b03-4b4f-a94d-475c8014c184": {
					"name": "Si"
				},
				"0bdd05ca-b886-4137-9f96-6771ba0fcfd6": {
					"name": "No"
				},
				"25e7384a-e2b2-4aef-acd3-2b9d92c706b8": {
					"name": "SequenceFlow11"
				},
				"514ce715-4681-412e-b9a2-85754abdd628": {
					"name": "SequenceFlow12"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Inicio"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "fin"
		},
		"89db54f4-5ca6-48bd-ae30-8fc8b8d79b43": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Necesita aprobador?",
			"default": "4bbf86b8-9c9b-402c-83d2-8428a6627c9a"
		},
		"91a4642b-46d8-44a6-8a80-d5f2314b1394": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Revisa la cotizacion del usuario",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "elizabethriver@gmail.com",
			"formReference": "/forms/cotizacion/FormRevisarCotizacion.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "formrevisarcotizacion"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Revisar cotizacion"
		},
		"3a1d1343-c283-4258-bab1-2e25607b420d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Correo de aprobacion automatica",
			"mailDefinitionRef": "3d980da8-12b0-4540-ac11-b0439f2e7778"
		},
		"b3fd6c3a-f41e-481f-8286-4b7da8d00168": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Se aprueba?",
			"default": "0bdd05ca-b886-4137-9f96-6771ba0fcfd6"
		},
		"18b57922-8643-48b6-888d-0301450c75b4": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Correo de aprobacion",
			"mailDefinitionRef": "ab6b80c4-655f-4340-99d3-b54869a9d84f"
		},
		"41a88a24-5751-46ed-b8e4-fcf343928fef": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask3",
			"name": "Correo de rechazo",
			"mailDefinitionRef": "301c5bbf-4819-4a00-8bb5-2304db43b006"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "89db54f4-5ca6-48bd-ae30-8fc8b8d79b43"
		},
		"d2c33794-6176-45b3-bfbe-b4c672cba6fb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "3a1d1343-c283-4258-bab1-2e25607b420d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7ee9fe6f-fe67-40de-9de0-6841f65f5fd1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.respuestaAutomatica.respuesta == \"aprobado\"}",
			"id": "sequenceflow3",
			"name": "Si",
			"sourceRef": "89db54f4-5ca6-48bd-ae30-8fc8b8d79b43",
			"targetRef": "91a4642b-46d8-44a6-8a80-d5f2314b1394"
		},
		"4bbf86b8-9c9b-402c-83d2-8428a6627c9a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "No",
			"sourceRef": "89db54f4-5ca6-48bd-ae30-8fc8b8d79b43",
			"targetRef": "3a1d1343-c283-4258-bab1-2e25607b420d"
		},
		"b36dd2f7-9e9b-494f-b0c3-0f450257f412": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "91a4642b-46d8-44a6-8a80-d5f2314b1394",
			"targetRef": "b3fd6c3a-f41e-481f-8286-4b7da8d00168"
		},
		"8d3b0f54-1b03-4b4f-a94d-475c8014c184": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.respuestaAprobador.respuesta == \"aprobado\"}",
			"id": "sequenceflow7",
			"name": "Si",
			"sourceRef": "b3fd6c3a-f41e-481f-8286-4b7da8d00168",
			"targetRef": "18b57922-8643-48b6-888d-0301450c75b4"
		},
		"0bdd05ca-b886-4137-9f96-6771ba0fcfd6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "No",
			"sourceRef": "b3fd6c3a-f41e-481f-8286-4b7da8d00168",
			"targetRef": "41a88a24-5751-46ed-b8e4-fcf343928fef"
		},
		"25e7384a-e2b2-4aef-acd3-2b9d92c706b8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "18b57922-8643-48b6-888d-0301450c75b4",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"514ce715-4681-412e-b9a2-85754abdd628": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "41a88a24-5751-46ed-b8e4-fcf343928fef",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"6f9f06af-33b4-4494-9c06-a1e7ce201140": {},
				"585beb43-15ed-4431-8d05-e43df110085a": {},
				"aa8033ff-06cd-42d1-b03d-dbb8ea8c3eac": {},
				"2ce54a3f-468a-4ba7-a618-5f885e49ecfb": {},
				"4c8766cb-621e-4eb6-9a1c-ee9ccbc38bed": {},
				"ea2abb4c-9021-4829-9090-86a988f1e37e": {},
				"7f609050-5247-4898-a854-16c7e483a240": {},
				"5873de1b-2c62-48a7-a8b8-8127ce16ca3e": {},
				"84314145-ad69-49f0-9728-9f2af993dcac": {},
				"7187adee-4ca1-48fa-9e47-e62ee87d9d76": {},
				"87cbdd69-e7bb-46bd-b687-9331564a0bfb": {},
				"6ccc0fec-2c31-479d-869a-f6c82bca8eb7": {},
				"2f38f3df-871b-4df7-946f-84270def2839": {},
				"b5ba9fae-74b8-44f5-935a-63d586884e81": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1106,
			"y": 127,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,118.6875 211.11860547594029,118.6875",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "585beb43-15ed-4431-8d05-e43df110085a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6f9f06af-33b4-4494-9c06-a1e7ce201140": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "439.5,192 773.25,192 773.25,142.625 1123.5,142.625",
			"sourceSymbol": "ea2abb4c-9021-4829-9090-86a988f1e37e",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d2c33794-6176-45b3-bfbe-b4c672cba6fb"
		},
		"585beb43-15ed-4431-8d05-e43df110085a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 190.11860547594029,
			"y": 100.375,
			"object": "89db54f4-5ca6-48bd-ae30-8fc8b8d79b43"
		},
		"aa8033ff-06cd-42d1-b03d-dbb8ea8c3eac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232.11860547594029,123.46875 281.3993225097656,123.46875 281.3993225097656,37.46875 330.1800537109375,37.46875",
			"sourceSymbol": "585beb43-15ed-4431-8d05-e43df110085a",
			"targetSymbol": "2ce54a3f-468a-4ba7-a618-5f885e49ecfb",
			"object": "7ee9fe6f-fe67-40de-9de0-6841f65f5fd1"
		},
		"2ce54a3f-468a-4ba7-a618-5f885e49ecfb": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 330.6800537109375,
			"y": 9.5625,
			"width": 100,
			"height": 60,
			"object": "91a4642b-46d8-44a6-8a80-d5f2314b1394"
		},
		"4c8766cb-621e-4eb6-9a1c-ee9ccbc38bed": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "211.11860547594029,121.375 286.0592956542969,121.375 286.0592956542969,192 340.5,192",
			"sourceSymbol": "585beb43-15ed-4431-8d05-e43df110085a",
			"targetSymbol": "ea2abb4c-9021-4829-9090-86a988f1e37e",
			"object": "4bbf86b8-9c9b-402c-83d2-8428a6627c9a"
		},
		"ea2abb4c-9021-4829-9090-86a988f1e37e": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 340,
			"y": 162,
			"width": 100,
			"height": 60,
			"object": "3a1d1343-c283-4258-bab1-2e25607b420d"
		},
		"7f609050-5247-4898-a854-16c7e483a240": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 477.1800537109375,
			"y": 18.5625,
			"object": "b3fd6c3a-f41e-481f-8286-4b7da8d00168"
		},
		"5873de1b-2c62-48a7-a8b8-8127ce16ca3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380.6800537109375,39.5625 498.1800537109375,39.5625",
			"sourceSymbol": "2ce54a3f-468a-4ba7-a618-5f885e49ecfb",
			"targetSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"object": "b36dd2f7-9e9b-494f-b0c3-0f450257f412"
		},
		"84314145-ad69-49f0-9728-9f2af993dcac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "498.1800537109375,39.5625 631.4300537109375,39.5625 631.4300537109375,-41.4375 793.6800537109375,-41.4375",
			"sourceSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"targetSymbol": "87cbdd69-e7bb-46bd-b687-9331564a0bfb",
			"object": "8d3b0f54-1b03-4b4f-a94d-475c8014c184"
		},
		"7187adee-4ca1-48fa-9e47-e62ee87d9d76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "498.1800537109375,39.5625 631.6800537109375,39.5625 631.6800537109375,69.5625 794.1800537109375,69.5625",
			"sourceSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"targetSymbol": "6ccc0fec-2c31-479d-869a-f6c82bca8eb7",
			"object": "0bdd05ca-b886-4137-9f96-6771ba0fcfd6"
		},
		"87cbdd69-e7bb-46bd-b687-9331564a0bfb": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 743.6800537109375,
			"y": -71.4375,
			"width": 100,
			"height": 60,
			"object": "18b57922-8643-48b6-888d-0301450c75b4"
		},
		"6ccc0fec-2c31-479d-869a-f6c82bca8eb7": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 744.1800537109375,
			"y": 39.5625,
			"width": 100,
			"height": 60,
			"object": "41a88a24-5751-46ed-b8e4-fcf343928fef"
		},
		"2f38f3df-871b-4df7-946f-84270def2839": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "832,-36 1125,-36 1125,137",
			"sourceSymbol": "87cbdd69-e7bb-46bd-b687-9331564a0bfb",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "25e7384a-e2b2-4aef-acd3-2b9d92c706b8"
		},
		"b5ba9fae-74b8-44f5-935a-63d586884e81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "843.6800537109375,71 1117,71 1117,144.5",
			"sourceSymbol": "6ccc0fec-2c31-479d-869a-f6c82bca8eb7",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "514ce715-4681-412e-b9a2-85754abdd628"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"sequenceflow": 12,
			"startevent": 1,
			"endevent": 1,
			"usertask": 4,
			"mailtask": 3,
			"exclusivegateway": 2
		},
		"3d980da8-12b0-4540-ac11-b0439f2e7778": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "grupo3SAP@outlook.com",
			"subject": "Respuesta a la solicitud de cotizacion",
			"text": "Muchas gracias ${context.cotizacion.nombreSolicitante}\n\nTu solicitud ha sido aprobado automaticamente\n",
			"id": "maildefinition1"
		},
		"ab6b80c4-655f-4340-99d3-b54869a9d84f": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "grupo3SAP@outlook.com",
			"subject": "Respuesta a la solicitud de cotizacion",
			"text": "Muchas gracias ${context.cotizacion.nombreSolicitante}\n\nTu solicitud ha sido aprobado automaticamente",
			"id": "maildefinition2"
		},
		"301c5bbf-4819-4a00-8bb5-2304db43b006": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "grupo3SAP@outlook.com",
			"subject": "Respuesta a la solicitud de cotizacion",
			"text": "Estimado ${context.cotizacion.nombreSolicitante}\nLamentamos comunicarte que tu solicitud ha sido rechazado",
			"id": "maildefinition3"
		}
	}
}