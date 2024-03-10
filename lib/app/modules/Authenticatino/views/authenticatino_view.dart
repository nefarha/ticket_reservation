import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';

import '../controllers/authenticatino_controller.dart';

class AuthenticatinoView extends GetView<AuthenticatinoController> {
  const AuthenticatinoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => StackWithLoading(
          isLoading: controller.isLoading.value,
          children: [
            PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                SignInPage(),
                SignUpPage(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => controller.isLoading.value
            ? const SizedBox()
            : controller.currentIndex.value == 0
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Belum punya akun? '),
                        GestureDetector(
                          onTap: () {
                            controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear,
                            );
                            controller.currentIndex.value = 1;
                          },
                          child: const Text(
                            'Daftar disini!',
                            style: TextStyle(
                              color: ColorPalette.activeColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Sudah punya akun? '),
                        GestureDetector(
                          onTap: () {
                            controller.pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear,
                            );
                            controller.currentIndex.value = 0;
                          },
                          child: const Text(
                            'Masuk disini!',
                            style: TextStyle(
                              color: ColorPalette.activeColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final signInForm = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GetBuilder<AuthenticatinoController>(builder: (controller) {
        return Form(
          key: signInForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign in',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Reusable.customTextfield(
                hint: 'email',
                controller: controller.emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              Reusable.customTextfield(
                hint: 'password',
                controller: controller.passwordController,
                isObscured: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorPalette.backgroundColor,
                  boxShadow: Reusable.deafultBoxShadow,
                ),
                child: Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: AccountType.values
                        .map(
                          (e) => ListTile(
                            onTap: () {
                              controller.selectedAccountType.value = e;
                            },
                            leading: controller.selectedAccountType.value == e
                                ? const Icon(
                                    Icons.radio_button_checked,
                                    color: ColorPalette.activeColor,
                                  )
                                : Icon(
                                    Icons.radio_button_off,
                                    color: Colors.grey.shade500,
                                  ),
                            title: Text(
                              e.name.capitalizeFirst!,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(e == AccountType.admin
                                ? "untuk admin"
                                : 'untuk pemesan'),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  if (signInForm.currentState!.validate()) {
                    await controller.signIn();
                  }
                },
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorPalette.buttonColor,
                    boxShadow: Reusable.deafultBoxShadow,
                  ),
                  child: const Center(
                    child: Text(
                      'sign in',
                      style: TextStyle(
                        color: ColorPalette.textButtonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpForm = GlobalKey<FormState>();
    return GetBuilder<AuthenticatinoController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: signUpForm,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign up',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Reusable.customTextfield(
                    hint: 'email',
                    controller: controller.emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Reusable.customTextfield(
                    hint: 'password',
                    controller: controller.passwordController,
                    isObscured: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Reusable.customTextfield(
                    hint: 'nama',
                    controller: controller.nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorPalette.backgroundColor,
                      boxShadow: Reusable.deafultBoxShadow,
                    ),
                    child: Obx(
                      () => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: AccountType.values
                            .map(
                              (e) => ListTile(
                                onTap: () {
                                  controller.selectedAccountType.value = e;
                                },
                                leading:
                                    controller.selectedAccountType.value == e
                                        ? const Icon(
                                            Icons.radio_button_checked,
                                            color: ColorPalette.activeColor,
                                          )
                                        : Icon(
                                            Icons.radio_button_off,
                                            color: Colors.grey.shade500,
                                          ),
                                title: Text(
                                  e.name.capitalizeFirst!,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(e == AccountType.admin
                                    ? "untuk admin"
                                    : 'untuk pemesan'),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (signUpForm.currentState!.validate()) {
                        await controller.signUp();
                      }
                    },
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorPalette.buttonColor,
                        boxShadow: Reusable.deafultBoxShadow,
                      ),
                      child: const Center(
                        child: Text(
                          'sign up',
                          style: TextStyle(
                            color: ColorPalette.textButtonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
