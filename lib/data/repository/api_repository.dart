import 'dart:async';
import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/data/model/failure.dart';
import 'dart:convert' as convert;

abstract class BaseApiRepository {
  // GET API
  Future getApi(Uri uri) async {}

  // POST API WITH HEADERS
  Future postApi(Uri uri, Map<String, String> headers, dynamic data) async {}

  // AUTH POST API
  Future postWithAuthApi(Uri uri, Map<String, dynamic> data) async {}

  // AUTH PUT API
  Future putApi(Uri uri, dynamic data) async {}
}

class ApiRepository implements BaseApiRepository {
  @override
  Future getApi(Uri uri) async {
    final box = await Hive.openBox<String>(userToken);
    var token = box.get("userToken");
    try {
      return http.get(uri, headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $token"
      }).timeout(const Duration(seconds: 60));
    } on TimeoutException {
      return Failure("Slow internet connection");
    } on SocketException {
      return Failure("No Internet Connection");
    } on HttpException {
      return Failure("Couldn't perform action, please try again");
    } on FormatException {
      return Failure("Bad Response Format");
    }
  }

  @override
  Future postApi(Uri uri, Map<String, String> headers, data) async {
    try {
      return http
          .post(uri, body: data, headers: headers)
          .timeout(const Duration(seconds: 60));
    } on TimeoutException {
      return Failure("Slow internet connection");
    } on SocketException {
      return Failure("No Internet Connection");
    } on HttpException {
      return Failure("Couldn't perform action, please try again");
    } on FormatException {
      return Failure("Bad Response Format");
    }
  }

  @override
  Future postWithAuthApi(Uri uri, Map<String, dynamic> data) async {
    try {
      return http.post(uri, body: convert.jsonEncode(data), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        //'Authorization': 'Bearer $tokenBox'
      }).timeout(const Duration(seconds: 10));
    } on TimeoutException {
      return Failure("Slow internet connection");
    } on SocketException {
      return Failure("No Internet Connection");
    } on HttpException {
      return Failure("Couldn't perform action, please try again");
    } on FormatException {
      return Failure("Bad Response Format");
    }
  }

  @override
  Future putApi(Uri uri, data) async {
    try {
      return http.put(uri, body: convert.jsonEncode(data), headers: {
        "Content-Type": "application/json",
      }).timeout(const Duration(seconds: 10));
    } on TimeoutException {
      return Failure("Slow internet connection");
    } on SocketException {
      return Failure("No Internet Connection");
    } on HttpException {
      return Failure("Couldn't perform action, please try again");
    } on FormatException {
      return Failure("Bad Response Format");
    }
  }
}

//

