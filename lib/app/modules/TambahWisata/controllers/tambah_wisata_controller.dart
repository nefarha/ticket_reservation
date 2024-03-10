import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/model/wisata/repo/wisata_repo.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

class TambahWisataController extends GetxController {
  final wisataRepo = WisataRepo();
  final namaController = TextEditingController();
  final hargaController = TextEditingController();

  var isLoading = false.obs;

  Future createWIsata() async {
    isLoading.toggle();
    var model = WisataModel(
        namaWisata: namaController.text,
        harga: int.parse(hargaController.text));

    await wisataRepo.createWisata(model: model);
    isLoading.toggle();
    Get.back();
  }
}
