import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/user/repo/user_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/routes/app_pages.dart';

class AuthenticatinoController extends GetxController {
  final authC = AuthController.instance;
  final userRepo = UserRepo();
  final pageController = PageController();
  final currentIndex = 0.obs;
  var isLoading = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  var selectedAccountType = Rx<AccountType>(AccountType.user);

  Future signIn() async {
    isLoading.toggle();

    var user = await authC.signInUserByEmail(
        email: emailController.text, password: passwordController.text);
    isLoading.toggle();
    if (user != null) {
      Get.offAllNamed(Routes.HOME);
    }
  }

  Future signUp() async {
    isLoading.toggle();

    var userCred = await authC.createUserByEmail(
        email: emailController.text, password: passwordController.text);
    if (userCred != null) {
      var user = UserModel(
        id: userCred.user!.uid,
        name: nameController.text,
        email: emailController.text,
        accountType: selectedAccountType.value.name,
      );
      await userRepo.createUser(user: user);
      isLoading.toggle();
      Get.offAllNamed(Routes.HOME);
    }
    isLoading.toggle();
  }
}
