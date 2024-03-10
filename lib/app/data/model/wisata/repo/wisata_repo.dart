import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';

class WisataRepo {
  final dio = DioService();

  Future<List<WisataModel>> getAllWisata() async {
    return await dio.ReadWisata();
  }

  Future createWisata({required WisataModel model}) async {
    await dio.CreateWisata(model: model);
  }

  Future deleteWisata({required int id}) async {
    await dio.deleteWisata(id: id);
  }
}
