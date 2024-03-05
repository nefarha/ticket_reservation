import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

class WisataRepo {
  final _wisataStore =
      FirebaseFirestore.instance.collection('wisata').withConverter(
            fromFirestore: (snapshot, options) =>
                WisataModel.fromJson(snapshot.data()!),
            toFirestore: (value, options) => value.toJson(),
          );

  Stream<List<WisataModel>> getAllWisata() {
    return _wisataStore.snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
  }

  Future createWisata({required WisataModel model}) async {
    await _wisataStore.doc(model.id).set(model);
  }

  Future deleteWisata({required WisataModel model}) async {
    await _wisataStore.doc(model.id).delete();
  }
}
