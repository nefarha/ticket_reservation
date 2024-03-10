import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';

class RekeningRepo {
  final dioService = DioService();

  Future createRekening({required RekeningModel rekening}) async {
    await dioService.CreateRekening(model: rekening);
  }

  Future deleteRekening({required int id}) async {
    await dioService.deleteRekening(id: id);
  }

  Future<List<RekeningModel>> getAllRekening() async {
    return await dioService.ReadRekening();
  }
}
