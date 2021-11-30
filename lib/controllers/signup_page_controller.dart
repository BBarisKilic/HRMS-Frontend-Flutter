import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  final _didAnimationStart = false.obs;
  final _emailIndividualTextEditingController = TextEditingController();
  final _passwordIndividualTextEditingController = TextEditingController();
  final _firstNameTextEditingController = TextEditingController();
  final _lastNameTextEditingController = TextEditingController();
  final _nationalIdTextEditingController = TextEditingController();
  final _yearOfBirthTextEditingController = TextEditingController();
  final _emailCompanyTextEditingController = TextEditingController();
  final _passwordCompanyTextEditingController = TextEditingController();
  final _companyNameTextEditingController = TextEditingController();
  final _websiteTextEditingController = TextEditingController();
  final _phoneTextEditingController = TextEditingController();

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
    Future.delayed(const Duration(milliseconds: 250), () {
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
