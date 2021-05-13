import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var _didAnimationStart = false.obs;

  var _emailTextEditingController = TextEditingController();
  var _passwordTextEditingController = TextEditingController();

  get didAnimationStart => _didAnimationStart.value;
  get emailTextEditingController => _emailTextEditingController;
  get passwordTextEditingController => _passwordTextEditingController;

  void startAnimation() async {
    Future.delayed(Duration(milliseconds: 250), () {
      _didAnimationStart.value = true;
    });
  }

  @override
  void onClose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.onClose();
  }
}
