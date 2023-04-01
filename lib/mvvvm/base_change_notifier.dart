import 'package:flutter/widgets.dart';

import '../utils/custom_exception.dart';

class BaseChangeNotifier extends ChangeNotifier {
  bool _isLoading = false;
  bool _isDone = false;
  String _errorMessages = '';
  MyException? _exception;

  //////////////////////////////////////////////////
  //////////////////////////////////////////////////
  bool get isDone => _isDone;
  set isDone(bool isDone) {
    _isDone = isDone;
    notifyListeners();
  }
  ///////////////////////////////////
  bool get isLoading => _isLoading;
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
  ///////////////////////////////////
  String get errorMessage => _errorMessages;
  set errorMessage(String errorMessage) {
    _errorMessages = errorMessage;
    notifyListeners();
  }
  ///////////////////////////////////
  MyException? get exception => _exception;
  set exception(MyException? exception) {
    _exception = exception;

    notifyListeners();
  }
  ///////////////////////////////////

  set errorMessageWithNotNotify(String errorMessage) {
    _errorMessages = errorMessage;
  }
}