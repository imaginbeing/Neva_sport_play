import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? nextDay() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 0));
  final formatter = DateFormat('E', 'ru_RU');
  return formatter.format(nextDay);
}

String? dateforapi2() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 1));
  final formatter = DateFormat('dd.MM.yyyy');
  return formatter.format(nextDay);
}

String? dateforapi3() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 2));
  final formatter = DateFormat('dd.MM.yyyy');
  return formatter.format(nextDay);
}

String? nextDate1() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 1));
  final formatter = DateFormat('d');
  return formatter.format(nextDay);
}

String? nextDate2() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 2));
  final formatter = DateFormat('d');
  return formatter.format(nextDay);
}

String? nextday2() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 1));
  final formatter = DateFormat('E', 'ru_RU');
  return formatter.format(nextDay);
}

String? nextday3() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 2));
  final formatter = DateFormat('E', 'ru_RU');
  return formatter.format(nextDay);
}

String? universaldate(int skip) {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: skip));
  final formatter = DateFormat('dd.MM.yyyy');
  return formatter.format(nextDay);
}

String? currentdate() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 0));
  final formatter = DateFormat('d');
  return formatter.format(nextDay);
}

String? dateforapi() {
  final now = DateTime.now();
  final nextDay = now.add(Duration(days: 0));
  final formatter = DateFormat('dd.MM.yyyy');
  return formatter.format(nextDay);
}

String? rightFormatTime(String? date) {
  if (date == null) return null;

  final inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss.S');
  final outputFormat = DateFormat('kk:mm');

  final parsedDate = inputFormat.parse(date);
  final formattedDate = outputFormat.format(parsedDate);

  return formattedDate;
}

List<String> listOfUser(
  String authUser,
  String otherUser,
) {
  return [authUser, otherUser];
}

List<String> listOfNamechats(
  String authUserName,
  String otherUserName,
) {
  return [authUserName, otherUserName];
}

String getOtherUserRef(
  List<String> listofUserRef,
  String authUserRef,
) {
  return authUserRef == listofUserRef.first
      ? listofUserRef.last
      : listofUserRef.first;
}

String getOtherUserName(
  List<String> listofName,
  String authUserName,
) {
  return authUserName == listofName.first ? listofName.last : listofName.first;
}
