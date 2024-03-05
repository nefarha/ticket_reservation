import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/user_controller.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/rekening/repo/rekening_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class TambahRekeningController extends GetxController {
  final rekeningRepo = RekeningRepo();
  UserModel? get user => UserController.instance.user.value;
  var isLoading = false.obs;

  final nomorController = TextEditingController();
  final pemilikController = TextEditingController();
  final bankController = TextEditingController();

  Future createRekening() async {
    isLoading.toString();
    var rekening = RekeningModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: pemilikController.text,
        bank_name: bankController.text,
        number: nomorController.text,
        ownerId: user!.id);
    await rekeningRepo.createRekening(rekening: rekening);
    isLoading.toggle();
    Get.back();
  }
}
