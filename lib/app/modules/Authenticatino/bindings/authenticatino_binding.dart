import 'package:get/get.dart';

import '../controllers/authenticatino_controller.dart';

class AuthenticatinoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticatinoController>(
      () => AuthenticatinoController(),
    );
  }
}
