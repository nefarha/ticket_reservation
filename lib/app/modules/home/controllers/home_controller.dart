import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/repo/pesanan_repo.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/rekening/repo/rekening_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/data/model/wisata/repo/wisata_repo.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';
import 'package:reza_reservation/app/modules/home/views/home_view.dart';

class HomeController extends GetxController {
  final dioService = DioService();
  UserModel get user => Get.arguments;
  final rekeningRepo = RekeningRepo();
  final pesananRepo = PesananRepo();
  final wisataRepo = WisataRepo();

  Rx<StatusPesanan> selectedStatus = Rx(StatusPesanan.pending);
  Rx<SortBy> selectedSortBy = Rx(SortBy.latest);
  var currentPage = 0.obs;

  List<String> titleList = ["Beranda", "Rekening", "Tambah Wisata"];
  List<Widget> pageList = [
    const BerandaPage(),
    const RekeningPage(),
    const WisataPage()
  ];

  RxList<RekeningModel> daftarRekening = RxList.empty();
  final rekeningSearch = RxString('');
  final pesananSearch = RxString('');

  RxList<PesananModel> daftarPesanan = RxList.empty();
  RxList<WisataModel> daftarWisata = RxList.empty();

  Future getRekening() async {
    daftarRekening.value = await dioService.ReadRekening();
  }

  Future deleteRekening({required int id}) async {
    await dioService.deleteRekening(id: id);
    await getRekening();
  }

  @override
  void onInit() async {
    getRekening();
    super.onInit();
  }
}
