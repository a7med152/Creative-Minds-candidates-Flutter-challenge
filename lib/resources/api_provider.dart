import 'dart:async';
import 'dart:convert';
import 'package:creative_minds_flutter_challenge/resources/repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:io';

import '../utils/custom_exception.dart';
import '../utils/dialogs.dart';

enum RequestType { post, get, put, delete }

class ApiProvider {
  Future<dynamic> requestAPI({
    required String url,
    Map? body,
    required Map<String, String> headers,
    RequestType type = RequestType.post,
  }) async {
    headers.addAll(
      {
        "Content-type": "application/json",
        "Accept": "application/json",
        "locale": Get.locale!.languageCode,
      },
    );

    if (Repository.user != null) {
      headers.addAll(
        {'authorization':'Bearer ${Repository.user!.token!}'},
      );
    }
    http.Response? response;
    try {
      if (type == RequestType.get) {
        response = await http.get(
          Uri.parse(url),
          headers: headers,
        );
      } else if (type == RequestType.post) {
        response = await http.post(
          Uri.parse(url),
          body: json.encode(body),
          headers: headers,
        );
      } else if (type == RequestType.put) {
        response = await http.put(
          Uri.parse(url),
          body: json.encode(body),
          headers: headers,
        );
      } else {
        response = await http.delete(
          Uri.parse(url),
          body: json.encode(body),
          headers: headers,
        );
      }
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        // If that call was not successful, throw an error.
        Map data = json.decode(response.body);
        // showErrorToast(data['message'] ?? tr('an_error_occurred_please_try_again'));
        throw MyException(
          messages: data['message'] ?? tr('an_error_occurred_please_try_again'),
          error: response.statusCode,
          errorException: 'Errors From States Request !',
        );
      }
    } on TimeoutException catch (_) {
      showErrorToast(tr('an_error_occurred_please_try_again'));
      throw MyException(
        messages: tr('an_error_occurred_please_try_again'),
        error: 101,
      );
    } on SocketException catch (_) {
      showErrorToast(tr('please_check_internet_connection'));
      throw MyException(
        messages: tr('please_check_internet_connection'),
        error: 102,
      );
    } catch (e) {
      if (e is MyException) {
        rethrow;
      } else {
        showErrorToast(tr('an_error_occurred_please_try_again'));
        throw MyException(
          messages: tr('an_error_occurred_please_try_again'),
          error: 100,
        );
      }
    }
  }
}
