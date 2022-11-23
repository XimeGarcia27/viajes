import 'package:flutter/material.dart';

class RegistroFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  //método para vlidar el fomrulario
  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
