import 'dart:convert';
import 'package:flutter_app/models/currency.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/networking/components/header.dart';

Future<Map<String, dynamic>> get(Uri url) async {
  final response = await http.get(url, headers: header);
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return json;
}
