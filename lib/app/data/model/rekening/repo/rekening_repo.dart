import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/services/dio_service.dart';

class RekeningRepo {
  final dioService = DioService();
  final _rekeningStore =
      FirebaseFirestore.instance.collection('rekening').withConverter(
            fromFirestore: (snapshot, options) =>
                RekeningModel.fromJson(snapshot.data()!),
            toFirestore: (value, options) => value.toJson(),
          );

  Future createRekening({required RekeningModel rekening}) async {
    final baseResponse = await dioService.CreateRekening(model: rekening);
  }

  Future deleteRekening({required int id}) async {
    await dioService.deleteRekening(id: id);
  }

  Future<List<RekeningModel>> getAllRekening() async {
    return await dioService.ReadRekening();
  }
}
