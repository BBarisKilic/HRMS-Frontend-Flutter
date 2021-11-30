import 'package:get/get.dart';

class WelcomePageController extends GetxController {
  final _isImageVisible = false.obs;

  bool get isImageVisible => _isImageVisible.value;

  @override
  void onReady() {
    super.onReady();
    _isImageVisible.value = true;
  }
}
