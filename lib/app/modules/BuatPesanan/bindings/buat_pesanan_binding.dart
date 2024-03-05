import 'package:get/get.dart';

import '../controllers/buat_pesanan_controller.dart';

class BuatPesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatPesananController>(
      () => BuatPesananController(),
    );
  }
}
