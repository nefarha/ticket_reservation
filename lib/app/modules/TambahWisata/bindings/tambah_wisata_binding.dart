import 'package:get/get.dart';

import '../controllers/tambah_wisata_controller.dart';

class TambahWisataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahWisataController>(
      () => TambahWisataController(),
    );
  }
}
