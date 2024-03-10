import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/viewModel/pesanan_view_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';

class PesananRepo {
  final dio = DioService();

  Future createPesanan({required PesananModel pesanan}) async {
    await dio.CreatePesanan(model: pesanan);
  }

  Future updatePesanan(
      {required int id, required StatusPesanan newStatus}) async {
    await dio.updatePesanan(id: id, newStatus: newStatus.name);
  }

  Future<PesananViewModel?> showPesanan({required int id}) async {
    return await dio.showPesanan(id: id);
  }

  Future<List<PesananModel>> getAllPesanan(
      {required String accountType}) async {
    return await dio.ReadPesanan(accountType: accountType);
  }
}
