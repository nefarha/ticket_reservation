import 'package:get/get.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/repo/pesanan_repo.dart';
import 'package:reza_reservation/app/data/model/pesanan/viewModel/pesanan_view_model.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class DetailPesananController extends GetxController
    with StateMixin<PesananViewModel> {
  Rxn<PesananViewModel> pesananModel = Rxn();
  UserModel get user => Get.arguments[1];
  final pesananRepo = PesananRepo();

  Future updatePesanan({required bool isAccept}) async {
    if (isAccept) {
      await pesananRepo.updatePesanan(
          id: pesananModel.value!.id!, newStatus: StatusPesanan.diterima);
    } else {
      await pesananRepo.updatePesanan(
          id: pesananModel.value!.id!, newStatus: StatusPesanan.ditolak);
    }
    Get.back();
  }

  Future cancelPesanan() async {
    await pesananRepo.updatePesanan(
        id: pesananModel.value!.id!, newStatus: StatusPesanan.req_cancel);
    Get.back();
  }

  Future adminCancelPesanan() async {
    await pesananRepo.updatePesanan(
        id: pesananModel.value!.id!, newStatus: StatusPesanan.cancel);
    Get.back();
  }

  @override
  void onInit() async {
    pesananModel.value =
        await pesananRepo.showPesanan(id: Get.arguments[0].id).then((value) {
      change(value, status: RxStatus.success());
      return value;
    });
    super.onInit();
  }
}
