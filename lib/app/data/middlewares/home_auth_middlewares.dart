import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/routes/app_pages.dart';

class HomeAuthMiddlewares extends GetMiddleware {
  HomeAuthMiddlewares({required this.priority});

  @override
  // TODO: implement priority
  int? priority = 0;

  final authC = AuthController.instance;
  @override
  RouteSettings? redirect(String? route) {
    print(authC.nullOrUser.value);
    if (authC.nullOrUser.value == null) {
      return const RouteSettings(
        name: Routes.AUTHENTICATINO,
      );
    }
    return null;
  }
}
