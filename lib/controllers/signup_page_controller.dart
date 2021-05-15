import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  var _didAnimationStart = false.obs;
  var _emailIndividualTextEditingController = TextEditingController();
  var _passwordIndividualTextEditingController = TextEditingController();
  var _firstNameTextEditingController = TextEditingController();
  var _lastNameTextEditingController = TextEditingController();
  var _nationalIdTextEditingController = TextEditingController();
  var _yearOfBirthTextEditingController = TextEditingController();
  var _emailCompanyTextEditingController = TextEditingController();
  var _passwordCompanyTextEditingController = TextEditingController();
  var _companyNameTextEditingController = TextEditingController();
  var _websiteTextEditingController = TextEditingController();
  var _phoneTextEditingController = TextEditingController();

  get didAnimationStart => _didAnimationStart.value;
  get emailIndividualTextEditingController =>
      _emailIndividualTextEditingController;
  get passwordIndividualTextEditingController =>
      _passwordIndividualTextEditingController;
  get firstNameTextEditingController => _firstNameTextEditingController;
  get lastNameTextEditingController => _lastNameTextEditingController;
  get nationalIdTextEditingController => _nationalIdTextEditingController;
  get yearOfBirthTextEditingController => _yearOfBirthTextEditingController;
  get emailCompanyTextEditingController => _emailCompanyTextEditingController;
  get passwordCompanyTextEditingController =>
      _passwordCompanyTextEditingController;
  get companyNameTextEditingController => _companyNameTextEditingController;
  get websiteTextEditingController => _websiteTextEditingController;
  get phoneTextEditingController => _phoneTextEditingController;

  void startAnimation() async {
    Future.delayed(Duration(milliseconds: 250), () {
      _didAnimationStart.value = true;
    });
  }

  @override
  void onClose() {
    _emailIndividualTextEditingController.dispose();
    _passwordIndividualTextEditingController.dispose();
    _firstNameTextEditingController.dispose();
    _lastNameTextEditingController.dispose();
    _nationalIdTextEditingController.dispose();
    _yearOfBirthTextEditingController.dispose();
    _emailCompanyTextEditingController.dispose();
    _passwordCompanyTextEditingController.dispose();
    _companyNameTextEditingController.dispose();
    _websiteTextEditingController.dispose();
    _phoneTextEditingController.dispose();
    super.onClose();
  }
}
