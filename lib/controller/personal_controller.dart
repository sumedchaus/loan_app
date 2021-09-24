import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loan_app/model/personal_data.dart';

class PersonalController extends GetxController {

  TextEditingController userNameEditController;

  TextEditingController emailIDEditController;

  var msg = "".obs;

  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  PersonalData personalData = PersonalData();

  @override
  void onInit() {
    userNameEditController = TextEditingController();
  }

  void loginValidation() {
    if (userNameEditController.text.isEmpty) {
      msg.value = " UserName Not Empty";
      return;
    } else {
      personalData.userName = userNameEditController.text;
      return null;
    }
  }
}
