import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/base_response/base_response.dart';
import 'package:reza_reservation/app/data/model/user/repo/user_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';
import 'package:reza_reservation/app/routes/app_pages.dart';

class AuthenticatinoController extends GetxController {
  final dioService = DioService();
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

    BaseResponse? baseResponse;
    if (selectedAccountType.value == AccountType.admin) {
      baseResponse = await dioService.SignInAdmin(
          email: emailController.text, password: passwordController.text);
    } else {
      baseResponse = await dioService.SignInUser(
          email: emailController.text, password: passwordController.text);
    }

    if (baseResponse!.status == 200) {
      var userModel = UserModel.fromJson(baseResponse.data);
      isLoading.toggle();
      Get.toNamed(Routes.HOME, arguments: userModel);
    } else {
      Reusable.errorDialog(middleText: baseResponse.data);
      isLoading.toggle();
    }
  }

  Future signUp() async {
    isLoading.toggle();
    var user = UserModel(
      id: 0,
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      accountType: selectedAccountType.value.name,
    );
    BaseResponse baseResponse;

    if (selectedAccountType.value == AccountType.admin) {
      baseResponse = await dioService.SignUpAdmin(model: user);
    } else {
      baseResponse = await dioService.SignUpUser(model: user);
    }

    if (baseResponse.status == 200) {
      isLoading.toggle();
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      currentIndex.value = 0;
    } else {
      isLoading.toggle();
      Reusable.errorDialog(middleText: baseResponse.data);
    }
    isLoading.toggle();
  }
}
