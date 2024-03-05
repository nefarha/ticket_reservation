import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';

class RekeningRepo {
  final _rekeningStore =
      FirebaseFirestore.instance.collection('rekening').withConverter(
            fromFirestore: (snapshot, options) =>
                RekeningModel.fromJson(snapshot.data()!),
            toFirestore: (value, options) => value.toJson(),
          );

  Future createRekening({required RekeningModel rekening}) async {
    await _rekeningStore.doc(rekening.id).set(rekening);
  }

  Future deleteRekening({required RekeningModel rekening}) async {
    await _rekeningStore.doc(rekening.id).delete();
  }

  Stream<List<RekeningModel>> getAllRekening() {
    return _rekeningStore.snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
  }
}
