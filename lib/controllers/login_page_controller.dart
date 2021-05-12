import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var _isFirstImageVisible = false.obs;
  var _isSecondImageVisible = false.obs;
  var _isThirdImageVisible = false.obs;
  var _isFirstTextVisible = false.obs;
  var _isSecondTextVisible = false.obs;

  bool get isFirstImageVisible => _isFirstImageVisible.value;
  bool get isSecondImageVisible => _isSecondImageVisible.value;
  bool get isThirdImageVisible => _isThirdImageVisible.value;
  bool get isFirstTextVisible => _isFirstTextVisible.value;
  bool get isSecondTextVisible => _isSecondTextVisible.value;

  void startAnimation() {
    Future.delayed(
        Duration(milliseconds: 250), () => _isFirstImageVisible.value = true);
    Future.delayed(
        Duration(milliseconds: 500), () => _isSecondImageVisible.value = true);
    Future.delayed(
        Duration(milliseconds: 750), () => _isThirdImageVisible.value = true);
    Future.delayed(
        Duration(milliseconds: 1250), () => _isFirstTextVisible.value = true);
    Future.delayed(
        Duration(milliseconds: 1500), () => _isSecondTextVisible.value = true);
  }

  void reset() {
    _isFirstImageVisible.value = false;
    _isSecondImageVisible.value = false;
    _isThirdImageVisible.value = false;
    _isFirstTextVisible.value = false;
    _isSecondTextVisible.value = false;
  }
}
