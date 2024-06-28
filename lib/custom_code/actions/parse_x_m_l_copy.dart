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

Future<dynamic> parseXMLCopy(String inputXML) async {
  // Add your function code here!

  // Parse the XML string and convert it to JSON.
  try {
    xml2json.parse(inputXML);
    final jsonString =
        xml2json.toParker(); // Use the Parker convention to convert to JSON.
    final jsonObject = json.decode(jsonString);

    return jsonObject;
  } catch (e) {
    // Handle any errors that might occur during parsing
    print('Error parsing XML: $e');
    return null;
  }
}
