import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/storage_controller.dart';
import 'package:reza_reservation/app/controllers/user_controller.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/repo/pesanan_repo.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/rekening/repo/rekening_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/data/model/wisata/repo/wisata_repo.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

class BuatPesananController extends GetxController {
  final pesananRepo = PesananRepo();
  final rekeningRepo = RekeningRepo();
  final wisataRepo = WisataRepo();
  final storageC = StorageController();
  UserModel? get user => UserController.instance.user.value;

  RxList<RekeningModel> daftarRekening = RxList.empty();
  RxList<WisataModel> daftarWisata = RxList.empty();
  Rxn<RekeningModel> selectedRekening = Rxn();
  Rxn<WisataModel> selectedWisata = Rxn();
  RxnString selectedImage = RxnString();
  RxnString selectedImageName = RxnString();
  RxInt jumlahTicket = 1.obs;
  var isLoading = false.obs;

  String get totalHarga =>
      ((selectedWisata.value?.harga ?? 0) * jumlahTicket.value).toString();

  Future pickFile() async {
    var pickFile = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (pickFile != null) {
      selectedImage.value = pickFile.files.first.path;
      selectedImageName.value = pickFile.files.first.name;
      print(pickFile);
    }
  }

  final nameController = TextEditingController();
  final nomorHpController = TextEditingController();
  final namaPemilikController = TextEditingController();
  final nomorRekeningController = TextEditingController();
  final namaBankController = TextEditingController();

  Future createPesanan() async {
    isLoading.toggle();
    if (selectedImage.value != null &&
        selectedRekening.value != null &&
        selectedWisata.value != null) {
      await storageC
          .uploadBuktiGambar(
        id: user!.id.toString(),
        file: File(selectedImage.value!),
      )
          .then((value) async {
        var pesanan = PesananModel(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          namaPemesan: nameController.text,
          nomorPemesan: nomorHpController.text,
          namaRekeningPemesan: namaPemilikController.text,
          nomorRekeningPemesan: nomorRekeningController.text,
          namaBankPemesan: namaBankController.text,
          wisata: selectedWisata.value!,
          jumlahTicket: jumlahTicket.value.toString(),
          totalHarga: totalHarga,
          rekeningPenerima: selectedRekening.value!,
          image: value,
          ownerId: user!.id.toString(),
          status: StatusPesanan.pending.name,
        );
        await pesananRepo.createPesanan(pesanan: pesanan);
        isLoading.toggle();
        Get.back();
      });
    } else {
      isLoading.toggle();
      Reusable.errorDialog(middleText: 'Mohon lengkapi data');
    }
  }

  @override
  void onInit() {
    // daftarRekening.bindStream(rekeningRepo.getAllRekening());
    daftarWisata.bindStream(wisataRepo.getAllWisata());
    super.onInit();
  }
}
