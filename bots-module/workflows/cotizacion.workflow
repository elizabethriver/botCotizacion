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
				"91a4642b-46d8-44a6-8a80-d5f2314b1394": {
					"name": "Revisar cotización"
				},
				"b3fd6c3a-f41e-481f-8286-4b7da8d00168": {
					"name": "Requiere revisión del agente de seguros?"
				},
				"18b57922-8643-48b6-888d-0301450c75b4": {
					"name": "Envío de cotización revisada por el agente de seguros"
				},
				"41a88a24-5751-46ed-b8e4-fcf343928fef": {
					"name": "Envío de cotización automática "
				},
				"a5e4847c-8d40-4948-8d2b-8c0114376dd6": {
					"name": "Regla de precio"
				},
				"7b4a2075-c797-4043-9e51-daddac513b8e": {
					"name": "Revisión de cotización por el agente de seguros"
				}
			},
			"sequenceFlows": {
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
				},
				"f7daee89-5c2d-47a9-ba43-637838ee399c": {
					"name": "SequenceFlow17"
				},
				"2275a9cc-4014-41a3-8577-0a66d8f4467d": {
					"name": "SequenceFlow18"
				},
				"2383221f-d055-4629-b90e-fbd2028c60d9": {
					"name": "SequenceFlow19"
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
		"91a4642b-46d8-44a6-8a80-d5f2314b1394": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Solicitud de cotización",
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
			"name": "Revisar cotización"
		},
		"b3fd6c3a-f41e-481f-8286-4b7da8d00168": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Requiere revisión del agente de seguros?",
			"default": "8d3b0f54-1b03-4b4f-a94d-475c8014c184"
		},
		"18b57922-8643-48b6-888d-0301450c75b4": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Envío de cotización revisada por el agente de seguros",
			"mailDefinitionRef": "ab6b80c4-655f-4340-99d3-b54869a9d84f"
		},
		"41a88a24-5751-46ed-b8e4-fcf343928fef": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask3",
			"name": "Envío de cotización automática ",
			"mailDefinitionRef": "301c5bbf-4819-4a00-8bb5-2304db43b006"
		},
		"a5e4847c-8d40-4948-8d2b-8c0114376dd6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/cotizacion/rulesCotizacion.js",
			"id": "scripttask2",
			"name": "Regla de precio"
		},
		"7b4a2075-c797-4043-9e51-daddac513b8e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Validación de cotización",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "elizabethriver@gmail.com",
			"formReference": "/forms/cotizacion/ValidacionCotizacion.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "validacioncotizacion"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask8",
			"name": "Revisión de cotización por el agente de seguros"
		},
		"b36dd2f7-9e9b-494f-b0c3-0f450257f412": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "91a4642b-46d8-44a6-8a80-d5f2314b1394",
			"targetRef": "a5e4847c-8d40-4948-8d2b-8c0114376dd6"
		},
		"8d3b0f54-1b03-4b4f-a94d-475c8014c184": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "Si",
			"sourceRef": "b3fd6c3a-f41e-481f-8286-4b7da8d00168",
			"targetRef": "7b4a2075-c797-4043-9e51-daddac513b8e"
		},
		"0bdd05ca-b886-4137-9f96-6771ba0fcfd6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.datosDeSolicitante.marcaAuto== \"kia\"}",
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
		"f7daee89-5c2d-47a9-ba43-637838ee399c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "a5e4847c-8d40-4948-8d2b-8c0114376dd6",
			"targetRef": "b3fd6c3a-f41e-481f-8286-4b7da8d00168"
		},
		"2275a9cc-4014-41a3-8577-0a66d8f4467d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "91a4642b-46d8-44a6-8a80-d5f2314b1394"
		},
		"2383221f-d055-4629-b90e-fbd2028c60d9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "7b4a2075-c797-4043-9e51-daddac513b8e",
			"targetRef": "18b57922-8643-48b6-888d-0301450c75b4"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"2ce54a3f-468a-4ba7-a618-5f885e49ecfb": {},
				"7f609050-5247-4898-a854-16c7e483a240": {},
				"5873de1b-2c62-48a7-a8b8-8127ce16ca3e": {},
				"84314145-ad69-49f0-9728-9f2af993dcac": {},
				"7187adee-4ca1-48fa-9e47-e62ee87d9d76": {},
				"87cbdd69-e7bb-46bd-b687-9331564a0bfb": {},
				"6ccc0fec-2c31-479d-869a-f6c82bca8eb7": {},
				"2f38f3df-871b-4df7-946f-84270def2839": {},
				"b5ba9fae-74b8-44f5-935a-63d586884e81": {},
				"1b7d6e15-d4d4-4003-9330-28c1044f8181": {},
				"a0befcd3-4221-43d3-a95c-b80112157482": {},
				"24dc8ab3-68c2-4afb-8aa0-de5dcaa391ae": {},
				"2631660c-859c-40dd-acfa-5d1a9f1253d3": {},
				"1e475c3b-361a-40bc-8df2-405cc5af9f19": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -272,
			"y": 68,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1018,
			"y": 49,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"2ce54a3f-468a-4ba7-a618-5f885e49ecfb": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -73.3199462890625,
			"y": 23.5625,
			"width": 100,
			"height": 60,
			"object": "91a4642b-46d8-44a6-8a80-d5f2314b1394"
		},
		"7f609050-5247-4898-a854-16c7e483a240": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 315.1800537109375,
			"y": 39.5625,
			"object": "b3fd6c3a-f41e-481f-8286-4b7da8d00168"
		},
		"5873de1b-2c62-48a7-a8b8-8127ce16ca3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-23.3199462890625,57.28125 160,57.28125",
			"sourceSymbol": "2ce54a3f-468a-4ba7-a618-5f885e49ecfb",
			"targetSymbol": "1b7d6e15-d4d4-4003-9330-28c1044f8181",
			"object": "b36dd2f7-9e9b-494f-b0c3-0f450257f412"
		},
		"84314145-ad69-49f0-9728-9f2af993dcac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "336.1800537109375,60.5625 459.59002685546875,60.5625 459.59002685546875,-41 612,-41",
			"sourceSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"targetSymbol": "2631660c-859c-40dd-acfa-5d1a9f1253d3",
			"object": "8d3b0f54-1b03-4b4f-a94d-475c8014c184"
		},
		"7187adee-4ca1-48fa-9e47-e62ee87d9d76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "357.1800537109375,60.5625 459.6800537109375,60.5625 459.6800537109375,120.5625 561.6800537109375,120.5625",
			"sourceSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"targetSymbol": "6ccc0fec-2c31-479d-869a-f6c82bca8eb7",
			"object": "0bdd05ca-b886-4137-9f96-6771ba0fcfd6"
		},
		"87cbdd69-e7bb-46bd-b687-9331564a0bfb": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 768.6800537109375,
			"y": -61.4375,
			"width": 100,
			"height": 60,
			"object": "18b57922-8643-48b6-888d-0301450c75b4"
		},
		"6ccc0fec-2c31-479d-869a-f6c82bca8eb7": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 562.1800537109375,
			"y": 90.5625,
			"width": 100,
			"height": 60,
			"object": "41a88a24-5751-46ed-b8e4-fcf343928fef"
		},
		"2f38f3df-871b-4df7-946f-84270def2839": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "857,-26 943.5900268554688,-26 943.5900268554688,59 1037,59",
			"sourceSymbol": "87cbdd69-e7bb-46bd-b687-9331564a0bfb",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "25e7384a-e2b2-4aef-acd3-2b9d92c706b8"
		},
		"b5ba9fae-74b8-44f5-935a-63d586884e81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "661.6800537109375,122 840.3400268554688,122 840.3400268554688,66.5 1029,66.5",
			"sourceSymbol": "6ccc0fec-2c31-479d-869a-f6c82bca8eb7",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "514ce715-4681-412e-b9a2-85754abdd628"
		},
		"1b7d6e15-d4d4-4003-9330-28c1044f8181": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 110,
			"y": 31,
			"width": 100,
			"height": 60,
			"object": "a5e4847c-8d40-4948-8d2b-8c0114376dd6"
		},
		"a0befcd3-4221-43d3-a95c-b80112157482": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "160,60.78125 336.1800537109375,60.78125",
			"sourceSymbol": "1b7d6e15-d4d4-4003-9330-28c1044f8181",
			"targetSymbol": "7f609050-5247-4898-a854-16c7e483a240",
			"object": "f7daee89-5c2d-47a9-ba43-637838ee399c"
		},
		"24dc8ab3-68c2-4afb-8aa0-de5dcaa391ae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-247,88 -156.65606689453125,88 -156.65606689453125,53.5625 -72.8199462890625,53.5625",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "2ce54a3f-468a-4ba7-a618-5f885e49ecfb",
			"object": "2275a9cc-4014-41a3-8577-0a66d8f4467d"
		},
		"2631660c-859c-40dd-acfa-5d1a9f1253d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 562,
			"y": -71,
			"width": 100,
			"height": 60,
			"object": "7b4a2075-c797-4043-9e51-daddac513b8e"
		},
		"1e475c3b-361a-40bc-8df2-405cc5af9f19": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "612,-41.21875 715.5900268554688,-41.21875 715.5900268554688,-31.21875 818.6800537109375,-31.21875",
			"sourceSymbol": "2631660c-859c-40dd-acfa-5d1a9f1253d3",
			"targetSymbol": "87cbdd69-e7bb-46bd-b687-9331564a0bfb",
			"object": "2383221f-d055-4629-b90e-fbd2028c60d9"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"sequenceflow": 19,
			"startevent": 1,
			"endevent": 1,
			"usertask": 8,
			"scripttask": 2,
			"mailtask": 3,
			"exclusivegateway": 2
		},
		"ab6b80c4-655f-4340-99d3-b54869a9d84f": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "elizabethriver@gmail.com",
			"subject": "Respuesta a la solicitud de cotización",
			"reference": "/webcontent/cotizacion/solicitudManual.html",
			"id": "maildefinition2"
		},
		"301c5bbf-4819-4a00-8bb5-2304db43b006": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "elizabethriver@gmail.com",
			"subject": "Respuesta a la solicitud de cotizacion. Aprobación automática",
			"reference": "/webcontent/cotizacion/sentCotizacionAutomatica.html",
			"id": "maildefinition3"
		}
	}
}