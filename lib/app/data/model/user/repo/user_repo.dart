import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class UserRepo {
  final _userStore =
      FirebaseFirestore.instance.collection('users').withConverter(
            fromFirestore: (snapshot, options) =>
                UserModel.fromJson(snapshot.data()!),
            toFirestore: (value, options) => value.toJson(),
          );

  Future createUser({required UserModel user}) async {
    await _userStore.doc(user.id).set(user);
  }

  Stream<UserModel> readAccount({required String id}) {
    return _userStore.doc(id).snapshots().map((event) => event.data()!);
  }
}
