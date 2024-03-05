import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageController {
  final _storageInstance = FirebaseStorage.instance.ref();

  Future<String> uploadBuktiGambar(
      {required String id, required File file}) async {
    var references =
        _storageInstance.child('images/bukti/$id/${DateTime.now()}_bukti.png');

    return references.putFile(file).then((p0) => references.getDownloadURL());
  }
}
