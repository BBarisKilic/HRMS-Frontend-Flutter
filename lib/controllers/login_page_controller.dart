import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final _didAnimationStart = false.obs;

  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();

  get didAnimationStart => _didAnimationStart.value;
  get emailTextEditingController => _emailTextEditingController;
  get passwordTextEditingController => _passwordTextEditingController;

  void startAnimation() async {
    Future.delayed(const Duration(milliseconds: 250), () {
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
