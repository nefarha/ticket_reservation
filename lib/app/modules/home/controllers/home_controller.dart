import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/controllers/user_controller.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/repo/pesanan_repo.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/rekening/repo/rekening_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/modules/home/views/home_view.dart';

class HomeController extends GetxController {
  final authC = AuthController.instance;
  Rxn<UserModel> get user => UserController.instance.user;
  final rekeningRepo = RekeningRepo();
  final pesananRepo = PesananRepo();

  Rx<StatusPesanan> selectedStatus = Rx(StatusPesanan.pending);
  Rx<SortBy> selectedSortBy = Rx(SortBy.latest);
  var currentPage = 0.obs;

  List<String> titleList = ["Beranda", "Rekening"];
  List<Widget> pageList = [const BerandaPage(), const RekeningPage()];

  RxList<RekeningModel> daftarRekening = RxList.empty();
  final rekeningSearch = RxString('');
  final pesananSearch = RxString('');

  RxList<PesananModel> daftarPesanan = RxList.empty();

  @override
  void onInit() {
    daftarRekening.bindStream(rekeningRepo.getAllRekening());
    once(
      user,
      (callback) => daftarPesanan.bindStream(
        pesananRepo.getAllPesanan(
            isAdmin: user.value!.accountType == AccountType.admin.name,
            userId: user.value!.id),
      ),
    );
    super.onInit();
  }
}
