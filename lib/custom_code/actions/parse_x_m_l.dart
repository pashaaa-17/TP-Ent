// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:xml2json/xml2json.dart'; // add this line

Xml2Json xml2json = new Xml2Json(); //Make an instance.

Future<dynamic> parseXML(String inputXML) async {
  // Add your function code here!

  final xmlString = inputXML;
  final xml2json = Xml2Json();
  xml2json.parse(xmlString);
  final jsonString = xml2json.toParker();
  final jsonObject = json.decode(jsonString);

  return jsonObject;
}
