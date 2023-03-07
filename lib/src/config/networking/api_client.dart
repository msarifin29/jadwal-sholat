// ignore_for_file: body_might_complete_normally_catch_error

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return request.send().then((value) {
      debugPrint("${value.statusCode} ${value.reasonPhrase}");
      return value;
    }).catchError((err) async {
      debugPrint(err.toString());
      return http.StreamedResponse(
          Stream.fromIterable([err.toString().codeUnits]), 500);
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      debugPrint("${value.statusCode} ${value.body}");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint("${value.statusCode} ${value.body}");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> put(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return super
        .put(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint("${value.statusCode} ${value.body}");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> patch(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return super
        .patch(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint("${value.statusCode} ${value.body}");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return super
        .delete(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint("${value.statusCode} ${value.body}");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }
}
