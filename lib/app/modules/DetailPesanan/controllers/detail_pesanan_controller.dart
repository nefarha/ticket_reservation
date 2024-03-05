import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/user_controller.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/repo/pesanan_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class DetailPesananController extends GetxController {
  PesananModel pesananModel = Get.arguments;
  UserModel? get user => UserController.instance.user.value;
  final pesananRepo = PesananRepo();

  Future updatePesanan({required bool isAccept}) async {
    if (isAccept) {
      await pesananRepo.updatePesanan(
          pesanan: pesananModel, newStatus: StatusPesanan.diterima);
    } else {
      await pesananRepo.updatePesanan(
          pesanan: pesananModel, newStatus: StatusPesanan.ditolak);
    }
    Get.back();
  }
}
