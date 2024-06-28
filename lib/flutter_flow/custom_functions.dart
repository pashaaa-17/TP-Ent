import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String formatKwacha(int number) {
  // Create a NumberFormat object for Zambian Kwacha currency formatting
  final format = NumberFormat.currency(
    locale: 'en_ZM', // Locale for Zambian Kwacha
    symbol: 'K', // Currency symbol for Zambian Kwacha
    decimalDigits: 0, // No decimal digits (Zambian Kwacha uses whole numbers)
  );

  // Format the amount and return the formatted string
  return format.format(number);
}

double revertKwachaFormat(String formattedAmount) {
  // Remove the 'K' symbol and commas from the formatted amount
  String cleanedString = formattedAmount.replaceAll(RegExp(r'[K,]'), '');
  // Parse the cleaned string as a double
  return double.parse(cleanedString);
}

String getFieldFromXml(
  String xmlString,
  String fieldName,
) {
  // selects the xml field value from the provdided input  field name
  final startTag = '<$fieldName>';
  final endTag = '</$fieldName>';
  final startIndex = xmlString.indexOf(startTag);
  final endIndex = xmlString.indexOf(endTag);
  if (startIndex == -1 || endIndex == -1) {
    return '';
  }
  return xmlString.substring(startIndex + startTag.length, endIndex);
}

int unixTime() {
  // get current time in gmt +2 and convert to unix
// Get the current time in GMT+2
  DateTime now = DateTime.now().toUtc().add(Duration(hours: 0));

  // Convert the time to Unix timestamp format and return it
  int unixTime = now.millisecondsSinceEpoch ~/ 1000;
  return unixTime;
}

double parseStringtoDouble(String string) {
  // convert string to double
  return double.parse(string);
}

int parseStringtoInt(String string) {
  // convert string to int
  return int.parse(string);
}

int modulo(
  int int1,
  int int2,
) {
  // calculates modulo of inputs
  return int1 % int2;
}

int addtwoNum(
  int var1,
  int var2,
) {
  // add two numbers
  return var1 + var2;
}
