import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reza_reservation/app/data/enums/enums.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';

class PesananRepo {
  final _pesananStore =
      FirebaseFirestore.instance.collection('pesanan').withConverter(
            fromFirestore: (snapshot, options) =>
                PesananModel.fromJson(snapshot.data()!),
            toFirestore: (value, options) => value.toJson(),
          );

  Future createPesanan({required PesananModel pesanan}) async {
    await _pesananStore.doc(pesanan.id).set(pesanan);
  }

  Future updatePesanan(
      {required PesananModel pesanan, required StatusPesanan newStatus}) async {
    await _pesananStore
        .doc(pesanan.id)
        .update(pesanan.copyWith(status: newStatus.name).toJson());
  }

  Stream<List<PesananModel>> getAllPesanan(
      {required bool isAdmin, required String userId}) {
    if (isAdmin) {
      return _pesananStore.snapshots().map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
    } else {
      return _pesananStore.where('ownerId', isEqualTo: userId).snapshots().map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
    }
  }
}
